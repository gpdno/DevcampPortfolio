module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "NickCool Portfolio | My Portfolio Site"
    @seo_keywords = "Gregory DeNinno portfolio"
  end
end