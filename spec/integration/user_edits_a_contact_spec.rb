require 'rails_helper.rb'
feature"User deletes a contact" do
    
    
    scenario "User successfully deletes a contact" do
        visit new_contact_path
        expect(page).to have_content("New Contact")
        fill_in "Name", with: "edit me"
        fill_in "Number", with: "1234567890"
        fill_in "Address", with: "Here"
        fill_in "Email", with: "email@email.com"
        click_button "Create Contact"
        expect(page).to have_content("edit me")
        expect(page).to have_content("1234567890")
        expect(page).to have_content("Here")
        expect(page).to have_content("email@email.com")
        visit contacts_path
        click_link "edit me"
        expect(page).to have_content("Edit Contact")
        
        fill_in "Name", with: "Now edited"
        fill_in "Number", with: "7777777777"
        fill_in "Address", with: "Somewhere"
        fill_in "Email", with: "admin@email.net"
        click_button "Update Contact"
        expect(page).to have_content("Now edited")
        expect(page).to have_content("7777777777")
        expect(page).to have_content("Somewhere")
        expect(page).to have_content("admin@email.net")
    end
end