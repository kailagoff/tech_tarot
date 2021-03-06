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
    if (past === present || past === future || present === future)
      @deck = Card.all
      past = @deck.slice(rand(78))
      present = @deck.slice(rand(77))
      future = @deck.slice(rand(76))
      @list = [past, present, future,]
      return @list
    else
      return @spread
    end
  end

  def self.focusCard
    @deck = Card.all
    @focus = @deck.slice(rand(78))
    return @focus
  end

  def self.oneCard
    @deck = Card.all
    @one = @deck.slice(rand(78))
    return @one
  end

  scope :major_arcana, -> { where(:arcana => 'Major') }

  scope :minor_amazon, -> { where(:suit => 'amazon') }
  scope :minor_microsoft, -> { where(:suit => 'microsoft') }
  scope :minor_google, -> { where(:suit => 'google') }
  scope :minor_oracle, -> { where(:suit => 'oracle') }
end
