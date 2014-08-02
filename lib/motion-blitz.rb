unless defined?(Motion::Project::Config)
  raise 'This file must be required within a RubyMotion project Rakefile.'
end

require 'motion-cocoapods'

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files += Dir.glob(File.join(lib_dir_path, 'project/**/*.rb'))

  app.pods ||= Motion::Project::CocoaPods.new(app)
  app.pods.pod 'SVProgressHUD', '~> 1.0'
end
