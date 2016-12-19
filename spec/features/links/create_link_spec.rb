require 'rails_helper'

feature 'Link Creation' do
  scenario 'it creates new short link' do
    visit '/'
    fill_in 'link[user_url]', with: 'https://github.com/teamcapybara/capybara'
    click_on 'Make Short'
    expect(page).to have_content('Your new short link')
  end

  scenario 'it should show validation error' do
    visit '/'
    fill_in 'link[user_url]', with: 'github.com'
    click_on 'Make Short'
    expect(page).to have_selector(".field_with_errors")
  end
end
