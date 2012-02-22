module Appointments
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates an appointment initializer and copies locale files to your application."
      class_option :orm
      
      def add_routes
        resources = "resources :appointments"
        route resources
      end
      
      def add_model
        template "appointment.rb", "app/models/appointment.rb"
      end
      
      def add_controller
        template "appointments_controller.rb", "app/controllers/appointments_controller.rb"
      end
      
      def add_view
        template "new.html.erb", "app/views/appointments/new.html.erb"
      end 
      
      def add_stub_view
        template "index.html.erb", "app/views/appointments/index.html.erb"
      end 
      
      def add_javascripts
        template "jquery.ui.datepicker.min.js", "public/javascripts/jquery.ui.datepicker.min.js"
        template "jquery.ui.widget.min.js", "public/javascripts/jquery.ui.widget.min.js"
        template "appointment.js", "public/javascripts/appointment.js"
      end
      
      def add_stylesheets
        template "jquery-ui-1.8.17.custom.css", "public/jquery-ui-1.8.17.custom.css"
      end

    end
end
