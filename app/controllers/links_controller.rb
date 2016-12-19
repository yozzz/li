class LinksController < ApplicationController

  before_action :host, except: :go

  def index
    @link = Link.new
  end

  def create
    @link = Link.new(user_url: link_params[:user_url])
    if @link.save
      short_key = GenerateLinkService.new(@link.id).execute
      @link.update_attributes(short_key: short_key)
      session[:short_key] = short_key
      flash[:notice] = 'Your new short link: '
      redirect_to :root
    else
      render :index
    end
  end

  def redirect
    user_url = RecognizeLinkService.new(params[:short_key]).execute
    if user_url
      redirect_or_render(user_url)
    else
      not_found
    end
  end

  private

  def host
    @host ||= request.host_with_port
  end

  def redirect_or_render(user_url)
    if Rails.env.test?
      render plain: user_url
    else
      redirect_to user_url
    end
  end

  def link_params
    params.require(:link).permit(:user_url)
  end

end
