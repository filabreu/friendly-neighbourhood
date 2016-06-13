class LinksController < ApplicationController

  def show
    @link = Link.new(link_params)

    render json: @link
  end

  protected

    def link_params
      params.require(:url)
    end
end
