require "rails_helper"

feature "User completes todo" do
  scenario "Mark as complete todos" do
    sign_in
    create_todo "Buy water"
    click_on "Mark complete"
    expect(page).to display_completed_todo "Buy water"
  end
end
