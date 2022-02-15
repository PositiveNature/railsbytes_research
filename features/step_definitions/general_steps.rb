# frozen_string_literal: true

Given('I am on the homepage') do
  # pending # Write code here that turns the phrase above into concrete actions
  visit root_path
end

Then('I should see {string}') do |string|
  # pending # Write code here that turns the phrase above into concrete actions
  page.should have_content(string)
end
