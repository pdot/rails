namespace :doc do
  namespace :diagram do
    task :models do
      sh "railroad -i -m -M  | sed 's/fontsize=14/fontsize=12/g' | sed 's/created_at :datetime\\\\l//g' | sed 's/updated_at :datetime\\\\l//g' > doc/models.dot"
      sh "dot -Tpng < doc/models.dot > doc/models.png"
      sh "dot -Tsvg < doc/models.dot > doc/models.svg"
    end

    task :models_brief do
      sh "railroad -i -b -m -M | sed 's/fontsize=14/fontsize=12/g' | sed 's/created_at :datetime\\\\l//g' | sed 's/updated_at :datetime\\\\l//g' > doc/models_brief.dot"
      sh "dot -Tpng < doc/models_brief.dot > doc/models_brief.png"
      sh "dot -Tsvg < doc/models_brief.dot > doc/models_brief.svg"
    end

  end

  task :diagrams => %w(diagram:models diagram:models_brief)
  end
