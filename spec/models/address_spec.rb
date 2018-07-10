require 'rails_helper'

describe Address, type: :model do
  describe 'relationships' do
    it {should belong_to :student}
  end
  describe 'validations' do
    it {should validate_presence_of :street}
    it {should validate_presence_of :city}
    it {should validate_presence_of :description}
    it {should validate_presence_of :zip_code}
    it {should validate_presence_of :state}
  end
end
