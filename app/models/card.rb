class Card < ActiveRecord::Base
  has_attached_file :image, styles: {large: "300x435>", medium: "125x250>", thumb: "50x80>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :card_name, :presence => true
  validates :card_content, :presence => true
  validates :suit, :presence => true
  validates :arcana, :presence => true

  def self.threeCards
    @deck = Card.all
    past = @deck.slice(rand(78))
    present = @deck.slice(rand(77))
    future = @deck.slice(rand(76))
    @spread = [past, present, future,]
    return @spread
  end

  def self.focusCard
    @deck = Card.all
    past = @deck.slice(rand(78))
    present = @deck.slice(rand(77))
    future = @deck.slice(rand(76))
    focus = @deck.slice(rand(75))
    @spread = [past, present, future, focus]
    @focus = @spread.pop()
    return @focus
  end

end
