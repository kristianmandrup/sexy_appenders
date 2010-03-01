module Appender
  # TODO: redesign using magic_filter pattern
  module Factory
    def << (hash = {})
      new_appender do |appender| 
        appender.template = hash.template
        appender.target   = hash.target
      end
    end

    # extract type of appender from name and create it!
    def method_missing(name, *args)
    end
    
    def self.new_appender(&block)
      yield Tracing::BaseAppender.new
    end
  end  
end