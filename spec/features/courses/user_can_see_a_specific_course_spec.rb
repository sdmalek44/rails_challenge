require 'rails_helper'

describe 'user visits course show page' do
  it 'can see a specific course and all its related students' do
    course = Course.create!(name: 'math')
    student1 = course.students.create!(name: 'bob')
    student2 = course.students.create!(name: 'bill')

    visit course_path(course)

    expect(page).to have_content(course.name)
    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
