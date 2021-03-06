require 'rails_helper.rb'

feature 'Creating Products' do 
    scenario 'can create product' do
        # visit root route
        visit '/'
        # click create product link
        click_link 'Create Product'
        # fill in the form with needed information (name, description, price in SGD)
        fill_in 'Name', with: 'name'
        fill_in 'Description', with: 'description'
        fill_in 'Price', with: 'price'
        # click submit button
        click_button 'Create Product'
        # expect page to have the content we submitted
        expect(page).to have_content('name')
        expect(page).to have_content('description')
        expect(page).to have_content('0.0')
    end
end