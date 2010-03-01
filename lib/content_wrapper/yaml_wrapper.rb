module Tracing
  module Wrapper
    module Xml
      def content_wrap_top
        "----\n"
      end

      def content_wrap_bottom
        ""
      end
    end
  end
end