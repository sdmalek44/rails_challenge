require 'rails_helper'

describe 'user visits /students/#' do
  it 'can see one students name' do
    student = Student.create!(name: 'bob')

    visit student_path(student)


    expect(page).to have_content(student.name)
  end
end
