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
<<<<<<< HEAD
        @user = User.find(params[:user_id])
=======
        
>>>>>>> b7da40c3b35e29e1e025909eafb1b5316f4a7e35
        @contact = Contact.find(params[:id])
    end
    
    def create
<<<<<<< HEAD
        @user = User.find(params[:user_id])
=======
        
>>>>>>> b7da40c3b35e29e1e025909eafb1b5316f4a7e35
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to @contact
        else
            render 'new'
        end
    end
    
    def edit
<<<<<<< HEAD
        @user = User.find(params[:user_id])
=======
        
>>>>>>> b7da40c3b35e29e1e025909eafb1b5316f4a7e35
        @contact = Contact.find(params[:id])
    end
    
    def update
<<<<<<< HEAD
        @user = User.find(params[:user_id])
=======
        
>>>>>>> b7da40c3b35e29e1e025909eafb1b5316f4a7e35
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