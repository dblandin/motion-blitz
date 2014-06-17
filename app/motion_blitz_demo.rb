class MotionBlitzDemo < UITableView
  def initWithFrame(frame, style: style)
    super.tap do |table_view|
      table_view.dataSource = manager
      table_view.delegate   = manager

      table_view.registerClass(UITableViewCell, forCellReuseIdentifier: 'BlitzDemoCell')
    end
  end

  private

  def manager
    @manager ||= MotionBlitzDemoManager.new
  end
end
