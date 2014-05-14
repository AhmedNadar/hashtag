require 'spec_helper'

feature "View the home page" do
  scenario "learning about the app" do
    visit root_path
    expect(page).to have_css 'title', text: "Hashtag", visible: false
    expect(page).to have_css '[data-role="description"]', text: "Search through Twitter API via Hashtag!"
  end
end