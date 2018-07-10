require 'rails_helper'

describe Student, type: :model do
  describe 'relationships' do
    it {should have_many :student_courses}
    it {should have_many :courses}
  end
  describe 'validations' do
    it {should validate_presence_of :name}
  end
end
