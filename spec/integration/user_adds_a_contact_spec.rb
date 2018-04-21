require 'rails_helper.rb'
feature"User adds a contact" do
    scenario "User successfully navigates to the new contacts page from the listing contacts page" do
        visit contacts_path
        expect(page).to have_content("Listing Contacts")
        click_link "New Contact"
        expect(page).to have_content("New Contact")
        expect(page).to have_field("Name")
        expect(page).to have_field("Number")
        expect(page).to have_field("Address")
        expect(page).to have_field("Email")
    end
    
    scenario "User successfully creates a new contact" do
        visit new_contact_path
        expect(page).to have_content("New Contact")
        fill_in "Name", with: "New Capybara Contact"
        fill_in "Number", with: "1234567890"
        fill_in "Address", with: "Here"
        fill_in "Email", with: "email@email.com"
        click_button "Create Contact"
        expect(page).to have_content("New Capybara Contact")
        expect(page).to have_content("1234567890")
        expect(page).to have_content("Here")
        expect(page).to have_content("email@email.com")
    end
end