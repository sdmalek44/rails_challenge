require 'rails_helper'

describe 'features' do
  describe 'when user visits /students/new' do
    it 'can create a new student' do
      visit new_student_path

      student = 'steve'
      fill_in :name, with: student

      click_on 'Create Student'

      expect(current_path).to eq(students_path)
      expect(page).to have_content(student)
    end
  end
end
