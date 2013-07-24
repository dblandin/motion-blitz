class MotionBlitzDemoManager
  attr_writer :progress

  def numberOfSectionsInTableView(table_view)
    1
  end

  def tableView(table_view, numberOfRowsInSection: section)
    demos.count
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    table_view.dequeueReusableCellWithIdentifier('BlitzDemoCell').tap do |cell|
      cell.textLabel.text = demos[index_path.row]
    end
  end

  def tableView(table_view, didSelectRowAtIndexPath: index_path)
    table_view.deselectRowAtIndexPath(index_path, animated: false)

    actions[index_path.row].call
  end

  def demos
    [ 'Show',
      'Show with status',
      'Show with progress',
      'Increase progress',
      'Decrease progress',
      'Show success',
      'Show success with status',
      'Show failure',
      'Show failure with status',
      'Dismiss' ]
  end

  def actions
    [ lambda { Motion::Blitz.show },
      lambda { Motion::Blitz.show('Hi there!') },
      lambda { Motion::Blitz.progress(progress) },
      lambda { Motion::Blitz.progress(increment_progress) },
      lambda { Motion::Blitz.progress(decrement_progress) },
      lambda { Motion::Blitz.success },
      lambda { Motion::Blitz.success('Yes!') },
      lambda { Motion::Blitz.error },
      lambda { Motion::Blitz.error('Oh no!') },
      lambda { Motion::Blitz.dismiss } ]
  end

  def progress
    @progress ||= 0.5
  end

  def increment_progress
    progress < 1.0 ? self.progress += 0.1 : progress
  end

  def decrement_progress
    progress > 0.0 ? self.progress -= 0.1 : progress
  end
end
