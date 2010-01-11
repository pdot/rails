if RAILS_ENV != 'production'
module Footnotes
  module Notes
    class PartialsNote < LogNote
      def initialize(controller)
        super
        @controller = controller
        @template = controller.instance_variable_get('@template')
        @partials ||= get_partials        
      end
      def row
        :edit
      end
      def title
        "Partials (#{@partials.size})"
      end
      def content
        links = @partials.map do |partial,file|
          href = Footnotes::Filter.prefix(file,1,1)
          "<tr><td><a href=\"#{href}\">#{partial}</td><td>#{@partial_times[partial].sum}ms</a></td><td>#{@partial_counts[partial]}</td></tr>"
        end
        "<table><thead><tr><th>Partial</th><th>Time</th><th>Count</th></tr></thead><tbody>#{links.join}</tbody></table>"
      end

      protected
        #Generate a list of partials that were rendered, also build up render times and counts.
        #This is memoized so we can use its information in the title easily.
        def get_partials
          partials = []
          @partial_counts = {}
          @partial_times = {}
          log_lines = log_tail
          log_lines.split("\n").each do |line|
            if line =~ /Rendered (\S*) \(([\d\.]+)ms\)/
              partial = $1
              @partial_times[partial] ||= []
              @partial_times[partial] << $2.to_f
              @partial_counts[partial] ||= 0
              @partial_counts[partial] += 1
              file = @template.send(:view_paths).send(:find_template, partial, @template.send(:template_format)).filename
              partials << [partial,file] unless partials.map(&:first).include?(partial)
            end
          end
          partials.sort_by{|p,f| -@partial_counts[p]}
      end
    end    
  end
end
Footnotes::Filter.notes += [:partials]
end