require 'rails_helper'

describe 'user visits /students/#' do
  it 'can see all addresses for that student' do
    student = Student.create!(name: 'tim')
    address1 = student.addresses.create(description: 'hey', street: 'bob', city: 'thing', state: 'tin', zip_code: 2)
    address2 = student.addresses.create(description: 'hey', street: 'bob', city: 'thing', state: 'tin', zip_code: 2)

    visit student_path(student)

    expect(page).to have_content(address1.description)
    expect(page).to have_content(address1.street)
    expect(page).to have_content(address1.zip_code)
    expect(page).to have_content(address1.city)
    expect(page).to have_content(address1.state)

    expect(page).to have_content(address2.description)
    expect(page).to have_content(address2.street)
    expect(page).to have_content(address2.zip_code)
    expect(page).to have_content(address2.city)
    expect(page).to have_content(address2.state)
  end
end
