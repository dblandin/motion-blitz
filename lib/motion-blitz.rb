unless defined?(Motion::Project::Config)
  raise 'This file must be required within a RubyMotion project Rakefile.'
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files += Dir.glob(File.join(lib_dir_path, 'project/**/*.rb'))

  app.pods ||= Motion::Project::CocoaPods.new(app)
  app.pods.pod 'SVProgressHUD', '~> 0.9'
end
