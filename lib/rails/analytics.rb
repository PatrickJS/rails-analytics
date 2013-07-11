require "rails/analytics/version"

module Rails
  module Analytics
    def colorize(text, color_code)
      "\e[#{color_code}m#{text}\e[0m"
    end
    # namespace our plugin and inherit from Rails::Railtie
    # to get our plugin into the initialization process
    class Railtie < Rails::Railtie

      # configure our plugin on boot. other extension points such
      # as configuration, rake tasks, etc, are also available
      initializer "rails_analytics.initialize" do |app|

        # subscribe to all rails notifications: controllers, AR, etc.
        ActiveSupport::Notifications.subscribe do |*args|
          event = ActiveSupport::Notifications::Event.new(*args)
          puts "Got notification: #{colorize(event.inspect, 32)}"
        end

      end
    end
  end
end
