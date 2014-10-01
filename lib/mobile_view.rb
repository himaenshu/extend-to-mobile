require "#{File.dirname(__FILE__)}/response/"

ActionController::Base::InstanceMethods.class_eval do

	include Response::Layout
	
	layout :custom_layout

	def default_template_name(action_name = self.action_name)
		if action_name
		 action_name = action_name.to_s
		 if action_name.include?('/') && template_path_includes_controller?(action_name)
		   action_name = strip_out_controller(action_name)
		 end
		end

		custom_controller_path = self.controller_path.gsub("/m/", "/#{default_namespace}/")
		"#{custom_controller_path}/#{action_name}"
	end

end	