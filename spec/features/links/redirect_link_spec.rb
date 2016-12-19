require 'rails_helper'

feature 'Link Redirection' do
  scenario 'it find and redirects to real user url' do
    visit '/'
    fill_in 'link[user_url]', with: 'https://github.com/teamcapybara/capybara'
    click_on 'Make Short'
    expect(page).to have_content('Your new short link')
    page.find("#short-link").click
    expect(page).to have_content("https://github.com/teamcapybara/capybara")
  end
end
