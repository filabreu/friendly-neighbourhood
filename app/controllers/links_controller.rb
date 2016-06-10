class LinksController < ApplicationController

  def show
    @link = Link.new(params[:url])
  end
end
