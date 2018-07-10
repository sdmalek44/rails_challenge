require 'rails_helper'

describe 'when user visits /students/#/addresses/new' do
  it 'he can create a new address' do
    student = Student.create!()
  end
end
