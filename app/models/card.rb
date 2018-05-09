class Card < ActiveRecord::Base
  validates :card_name, :presence => true
  validates :card_content, :presence => true
  validates :suit, :presence => true
  validates :arcana, :presence => true
end
