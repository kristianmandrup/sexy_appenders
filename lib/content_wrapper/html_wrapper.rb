module Tracing
  module Wrapper
    module Html
      def content_wrap_top
        %q{<?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
  <head>
    <title>Tracing :: abc</title>
    <link rel="stylesheet" href="tracing.css" type="text/css" media="screen" title="tracing" charset="utf-8">
    <script type="text/javascript" src="/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/scripts/tracing.js"></script> 
  </head>
  <body>}
      end
  
      def content_wrap_bottom
        %q{
  </body>
  </html> 
        }
      end
    end
  end
end