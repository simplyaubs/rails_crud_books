require 'spec_helper'

feature 'CRUD books' do
  scenario 'User can create a list of books' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a book'
    fill_in 'Name', with: 'Programming Ruby'
    fill_in 'Author', with: 'Dave Thomas'
    click_on 'Add book'
    expect(page).to have_content 'Programming Ruby'
    expect(page).to have_content 'Dave Thomas'
  end

  
end