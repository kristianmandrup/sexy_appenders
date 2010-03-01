module Tracing
  module Template 
    class String < Base
      def before_template(context)                  
        template = File.read('templates/template.text.erb').top
      end

      def before_block_template 
        template = <<-EOF
      (and a block)
      -----------------------------------------------
      EOF
      end

      def end_template(context) 
        template = File.read('templates/template.text.erb').bottom        
      end  
    end
  end
end