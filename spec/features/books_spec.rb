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

  scenario 'User can update a book from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a book'
    fill_in 'Name', with: 'Programming Ruby'
    fill_in 'Author', with: 'Dave Thomas'
    click_on 'Add book'
    expect(page).to have_content 'Programming Ruby'
    expect(page).to have_content 'Dave Thomas'
    click_on 'Programming Ruby'
    expect(page).to have_content 'Programming Ruby'
    expect(page).to have_content 'Dave Thomas'
    click_on 'Edit'
    fill_in 'Name', with: 'POODR'
    fill_in 'Author', with: 'Sandi Metz'
    click_on 'Update book'
    expect(page).to have_content 'POODR'
    expect(page).to have_content 'Sandi Metz'
    expect(page).to_not have_content 'Programming Ruby'
    expect(page).to_not have_content 'Dave Thomas'
  end
end