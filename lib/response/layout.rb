require "#{File.dirname(__FILE__)}/request"

module Response
  module Layout

    include Request::UserAgent

    DEFAULT_MOBILE_NAMESPACE = "mobile"

    def custom_mobile_layout
      if iphone?
        "iphone"
      elsif blackberry?
        "bb"
      elsif android?
        "android"  
      elsif windows?
        "windows"
      end
    end

    def default_namespace
      layout_path= "#{Rails.root}/app/views/layouts"
      if mobile?
        layout = custom_mobile_layout
        if (layout and File.exit?("#{layout_path}/#{layout}.html.erb"))
          layout
        elsif File.exit?("#{layout_path}/#{DEFAULT_MOBILE_NAMESPACE}.html.erb")
          DEFAULT_MOBILE_NAMESPACE
        else
          ""
        end  
      else
        ""
      end  
    end

    def custom_layout
      (default_namespace.blank? ? "application" : default_namespace)
    end

  end
end
