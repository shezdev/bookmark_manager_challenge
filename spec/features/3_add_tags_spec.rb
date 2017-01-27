require 'spec_helper'

# As a user
# So that I can organise my links into different categories for ease of search
# I would like to *add tags to the links* in my bookmark manager

feature 'Add tags' do

  scenario '3) Add tag to url' do
    # We can use `.create`, which we used in irb to make a Student, within our test!
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tag: 'Programming')

    visit '/links/new'
    # this is a *temporary* sanity check - to make sure we
    # can load the page :)
    expect(page.status_code).to eq 200

    visit '/links/new' do
      fill_in('url', :with => 'http://bbc.co.uk/news')
      fill_in('title', :with => 'BBC News')
      fill_in('tag', :with => 'News')
      click_button 'Submit!'
      # we expect to be redirected back to the links page
      expect(current_path).to eq '/links'
        within 'ul#links' do
          expect(page).to have_content('News')
        end
    end


  end
end
