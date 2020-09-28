class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      flash[:success] = "Message Sent Successfully"
      redirect_to root_path
    else
      flash[:errors] = @contact.errors.full_messages
      render action: :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message,:phone_number)
  end
end
