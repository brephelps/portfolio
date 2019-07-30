class ContactsController < ApplicationController
attr_accessor :contact

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to contacts_show_path(@contact)
  end

  def show
    @contact = Contact.find(params[:id])
  end 

  private

  def contact_params
    params.require(:contact).permit(:name, :message, :email, :phone_number)
  end
end
