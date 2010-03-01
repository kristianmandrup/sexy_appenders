module Tracing
  module Wrapper
    module Xml
      def content_wrap_top
        "{\n"
      end

      def content_wrap_bottom
        "\n}"        
      end
    end
  end
end