class StaticsController < ApplicationController
  def pdf_viewer
    render :file => './public/static_pages/viewer.html.erb', layout: false
  end
end
