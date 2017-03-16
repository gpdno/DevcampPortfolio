class TopicsController < ApplicationController

  before_action :set_sidebar

  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end

  private

  def set_sidebar
    @side_bar_topics = Topic.with_blogs
  end
end
