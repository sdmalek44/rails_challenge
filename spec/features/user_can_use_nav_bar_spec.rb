require 'rails_helper'

describe 'user goes to any page' do
  describe 'and uses the nav bar' do
    it 'can go to the all students page' do
      student = Student.create!(name: 'bob')

      visit student_path(student)

      click_on "All Students"

      expect(current_path).to eq(students_path)
    end
    it 'can go to the create a student page' do
      visit students_path

      click_on "Create New Student"

      expect(current_path).to eq(new_student_path)
    end
  end
end
