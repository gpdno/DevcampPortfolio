class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @page_bg = "background_home"
  end

  def about
    @skills = Skill.all
    @page_bg = "background_about"
  end

  def contact
    @page_bg = "background_contact"
  end

  def tech_news
    @tweets = SocialTools.twitter_search
    @page_bg = "background_tech_news"
  end
end
