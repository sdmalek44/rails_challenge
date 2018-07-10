require 'rails_helper'

describe 'when user visits /students/#/addresses/new' do
  it 'he can create a new address' do
    student = Student.create!(name: 'tim')

    visit new_student_address_path(student)

    fill_in 'address[description]', with: 'aaa'
    fill_in 'address[street]', with: 'bbb'
    fill_in 'address[city]', with: 'ccc'
    fill_in 'address[state]', with: 'ddd'
    fill_in 'address[zip]', with: 1
    click_on 'Create Address'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('aaa')
    expect(page).to have_content('bbb')
    expect(page).to have_content('ccc')
    expect(page).to have_content('ddd')
    expect(page).to have_content(1)
  end
end
