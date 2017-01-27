require 'spec_helper'

# As a user
# So that I can quickly go to web sites I regularly visit
# I would like to *see a list* of links (on the homepage)

feature 'View links' do

  scenario '1) See existing links on the links page' do
    # We can use `.create`, which we used in irb to make a Student, within our test!
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

    visit '/links'

    # this is a *temporary* sanity check - to make sure we
    # can load the page :)
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
