require 'rails_helper'

describe 'user visits /students/#' do
  xit 'can see a list of all courses' do
    student = Student.create!(name: 'steve')
    course1 = student.courses.create!(name: 'cats')
    course2 = student.courses.create!(name: 'dogs')

    visit student_path(student)

    expect(page).to have_content(course1.name)
    expect(page).to have_content(course2.name)
  end
end
