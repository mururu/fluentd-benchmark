module Fluent
  class FormatFilter < Filter
    Plugin.register_filter('format', self)

    attr_reader :formatter

    config_param :format, :string, :default => nil

    def configure(conf)
      super

      @timef = Fluent::TimeFormatter.new(format, true) 
    end

    def filter_stream(tag, es)
      es.each { |time, record|
        @timef.format(time)
      }
      es
    end
  end
end
