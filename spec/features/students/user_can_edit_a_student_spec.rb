require 'rails_helper'

describe 'user visits /students/#/edit' do
  it 'can edit a student' do
    student = Student.create!(name: 'bob')

    visit edit_student_path(student)

    fill_in 'student[name]', with: 'tim'
    click_on 'Update Student'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('tim')
    expect(page).to_not have_content('bob')
  end
end
