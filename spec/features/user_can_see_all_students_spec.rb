require 'rails_helper'

describe 'user visits /students' do
  it 'can see a list of all students' do
    student1 = Student.create!(name: 'tim')
    student2 = Student.create!(name: 'bob')

    visit students_path

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
