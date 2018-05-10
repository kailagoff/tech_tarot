class Card < ActiveRecord::Base
  has_attached_file :image, styles: {large: "300x435>", medium: "125x250>", thumb: "50x80>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :card_name, :presence => true
  validates :card_content, :presence => true
  validates :suit, :presence => true
  validates :arcana, :presence => true
end
