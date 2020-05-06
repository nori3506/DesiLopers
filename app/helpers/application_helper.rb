module ApplicationHelper
  def copyright_generator
    DesilopersViewTool::Renderer.copyright 'Nori', 'All rights reserved'
  end
end
