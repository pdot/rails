ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(
  :display => "%b %e %Y %H:%M",
  :compact => "%b %e %Y %H:%M",
  :compact_no_year => "%b %e %H:%M",
  :compact_with_seconds => "%b %e %Y %H:%M:%S",
  :compact_with_weekday => "%a %b %e %Y %H:%M",
  :compact_with_weekday_no_year => "%a %b %e %H:%M",
  :compact_with_weekday_with_year => "%a %b %e %Y %H:%M",
  :time_only => "%H:%M:%S",
  :chart_time_with_seconds => "%H:%M:%S",
  :chart_time => "%H:%M",
  :chart_date => "%a %b %e"
)
ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(
  :display => "%b %e %Y",
  :compact => "%b %e %Y",
  :compact_weekday => "%a %b %e %Y",
  :compact_weekday_no_year => "%a %b %e",
  :compact_weekday_with_year => "%a %b %e %Y",
  :compact_tz => "%b %e %Y"
)
