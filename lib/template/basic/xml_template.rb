module Tracing 
  module Template
    class Xml < Base
      def before_template(context)
        template = File.read('templates/template.xml.erb').top
      end

      def before_block_template 
        template = <<-EOF
      <block-arg>true</block-arg>
      EOF
      end

      def end_template(context) 
        result = context[:result]
        template = File.read('templates/template.xml.erb').bottom        
      end

      # override
      def handle_before_call(context)
        template = before_template(context)
        block_replace = context[:block] ? before_block_template : ""
        template.gsub!(/#block#/, block_replace)
        output(template, context)
      end
    end
  end
end