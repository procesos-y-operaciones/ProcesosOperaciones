class AdminController < ApplicationController

  def manage
  end

  def performance
  end

  def architecture
  end

  def headcount
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name'   )
    data_table.new_column('string', 'Manager')
    data_table.new_column('string', 'ToolTip')
    data_table.add_rows(
      Area.get_tree
    )
    opts   = { width: 5000, height: 240, allowHtml: true }
    @chart = GoogleVisualr::Interactive::OrgChart.new(data_table, opts)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "structure",
        layout: 'pdf',
        orientation: 'Landscape',
        javascript_delay: 5000,
        page_size: 'Letter'
      end
    end
  end

  def settings
  end

  def users
    @search = User.get_users.ransack(params[:q])
    @users = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

end
