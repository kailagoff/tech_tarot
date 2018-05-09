require 'rails_helper'

describe Card do
  it { should validate_presence_of :card_name }
  it { should validate_presence_of :card_content }
  it { should validate_presence_of :suit }
  it { should validate_presence_of :arcana }
end
