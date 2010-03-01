module Content
  module Wrapper
    def top(type)                          
      type = type.to_s.downcase
      File.read("templates/wrap_template.#{type}.erb").top
    end

    def bottom
      File.read("templates/wrap_template.#{type}.erb").bottom
    end
  end
end