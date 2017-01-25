require 'spec_helper'

# As a user
# So that I can save a new website link
# I would like to *add a address url and title* to my bookmark manager

feature 'Add links' do

  scenario 'a) Add url and title on the links page' do
    # We can use `.create`, which we used in irb to make a Student, within our test!
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

    visit '/links/new'
    # this is a *temporary* sanity check - to make sure we
    # can load the page :)
    expect(page.status_code).to eq 200

    visit '/links/new' do
      fill_in('url', :with => 'http://bbc.co.uk/news')
      fill_in('title', :with => 'BBC News')
      click_button 'Submit!'
      # we expect to be redirected back to the links page
      expect(current_path).to eq '/links'
        within 'ul#links' do
          expect(page).to have_content('BBC News')
        end
    end
  end
end
