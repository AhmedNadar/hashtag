require 'spec_helper'

feature "Search twitter for a term" do
	scenario "searching by hashtag" do
	    visit root_path
	    fill_in 'Search', with: 'Rails'
	    click_button 'Search'
	    expect(page).to have_css 'li.tweet'
	  end  
end