class AppDelegate
  attr_accessor :window

  def application(application, didFinishLaunchingWithOptions: launch_options)
    return true if RUBYMOTION_ENV == 'test'

    initialize_main_controller

    true
  end

  private

  def initialize_main_controller
    self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    window.setRootViewController(ViewController.alloc.init)

    window.makeKeyAndVisible
  end
end
