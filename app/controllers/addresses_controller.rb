class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.create(address_params)
    redirect_to student_path(@address.student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :city, :state, :zip_code, :street, :student_id)
  end
end
