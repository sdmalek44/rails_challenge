require 'rails_helper'

describe 'when user visits /students' do
  it 'they can delete an student' do
    student1 = Student.create!(name: 'todd')
    student2 = Student.create!(name: 'bob')

    visit students_path

    click_on "delete #{student2.name}"

    expect(current_path).to eq(students_path)
    expect(page).to have_content(student1.name)
    expect(page).to_not have_content(student2.name)
  end
end
