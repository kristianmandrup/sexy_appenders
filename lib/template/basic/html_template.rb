module Tracing 
  module Template
    class Html < Base
      
      def before_template(context)
        template = File.read('templates/template.html.erb').top
      end

      def before_block_template 
        template = <<-EOF
      <div class="block-arg">(and a block)</div>
      EOF
      end

      def end_template(context) 
        # method_name = context[:method_full_name]
        # result = context[:result].inspect
        template = File.read('templates/template.html.erb').bottom        
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