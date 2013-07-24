class ViewController < UIViewController
  def viewDidLoad
    super

    view.backgroundColor = UIColor.whiteColor

    view.addSubview(motion_blitz_demo)
  end

  def motion_blitz_demo
    MotionBlitzDemo.alloc.init.tap do |demo|
      demo.frame = view.bounds
    end
  end
end
