module ApplicationHelper
  def copyright_generator
    DesilopersViewTool::Renderer.copyright 'Nori', 'All rights reserved'
  end

  def alerts
    alert = flash[:alert] || flash[:error] || flash[:notice] || flash[:success]
    if alert
      js add_gritter(alert, title: "Desilopers")
    end
  end
end
