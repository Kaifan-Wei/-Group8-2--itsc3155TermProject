class ContactsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @contacts = Contact.all
    end
    
    def new
        @user = User.find(params[:user_id])
        @contact = Contact.new
    end
    
    def show
        @user = User.find(params[:user_id])
        @contact = Contact.find(params[:id])
    end
    
    def create
        @user = User.find(params[:user_id])
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to @contact
        else
            render 'new'
        end
    end
    
    def edit
        @user = User.find(params[:user_id])
        @contact = Contact.find(params[:id])
    end
    
    def update
        @user = User.find(params[:user_id])
        @contact = Contact.find(params[:id])
        if @contact.update(contact_params)
            redirect_to @contact
        else
            render 'edit'
        end
    end
    
    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        
        redirect_to contacts_path
    end
    
end

private
    def contact_params
        params.require(:contact).permit(:name, :number, :address, :email)
    end