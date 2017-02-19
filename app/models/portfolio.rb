class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image

  def self.angular
    where(subtitle: "Angular")
  end
end
