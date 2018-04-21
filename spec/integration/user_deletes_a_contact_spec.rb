require 'rails_helper.rb'
feature"User deletes a contact" do
    
    
    scenario "User successfully deletes a contact" do
        visit new_contact_path
        expect(page).to have_content("New Contact")
        fill_in "Name", with: "Temp Capybara Contact"
        fill_in "Number", with: "1234567890"
        fill_in "Address", with: "Here"
        fill_in "Email", with: "email@email.com"
        click_button "Create Contact"
        expect(page).to have_content("Temp Capybara Contact")
        expect(page).to have_content("1234567890")
        expect(page).to have_content("Here")
        expect(page).to have_content("email@email.com")
        click_link "Back"
        click_link "Delete"
        expect(page).to have_content("Listing Contacts")
        expect(page).to_not have_content("Temp Capybara Contact")
    end
end