require 'spec_helper'
# As a user
# So that I can quickly find links on a particular topic
# I would like to *filter links by tag*

feature 'Add tags' do

  scenario '4) Filter links by tags' do
    visit '/tags/bubbles'
    expect(page.status_code).to eq 200
  #     fill_in('url_input', :with => 'http://bbc.co.uk/news')
  #     fill_in('title_input', :with => 'BBC News')
  #     fill_in('tag_input', :with => 'News')
  #     click_button 'Submit!'
  #     link = Link.first
  #     expect('tag_input').to have_content('Bubbles')
  end
end
