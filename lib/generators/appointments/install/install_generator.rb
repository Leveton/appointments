module Appointments
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Creates an appointment initializer and copies locale files to your application."
      class_option :orm
      
      def add_model
        template "appointment.rb", "app/models/appointment.rb"
      end
      
      def add_view
        template "new.html.erb", "app/views/appointments/new.html.erb"
      end 
      
      def add_stub_view
        template "match_dates.html.erb", "app/views/appointments/match_dates.html.erb"
      end 
      
      def add_controller
        template "appointments_controller.rb", "app/controllers/appointmentss_controller.rb"
      end
      
      def add_javascripts
        template "jquery.ui.datepicker.min.js", "public/jquery.ui.datepicker.min.js"
        template "jquery.ui.widget.min.js", "public/jquery.ui.widget.min.js"
      end
      
      def add_stylesheets
        template "jquery-ui-1.8.17.custom.css", "public/jquery-ui-1.8.17.custom.css"
      end

      def add_captivate_routes
        match_dates = "match 'appointments/match_dates' => 'appointments#match_dates'"
        route match_dates
      end
    end
end
