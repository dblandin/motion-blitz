class MotionBlitzDemo < UITableView
  def init
    super.tap do |table_view|
      table_view.initWithFrame(CGRectZero, style: UITableViewStyleGrouped)
      table_view.dataSource = manager
      table_view.delegate   = manager

      table_view.registerClass(UITableViewCell, forCellReuseIdentifier: 'BlitzDemoCell')
    end
  end

  private

  def manager
    @_manager ||= MotionBlitzDemoManager.new
  end
end
