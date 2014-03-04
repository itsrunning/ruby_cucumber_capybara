Given(/^that I am on the google search page$/) do
  visit 'http://www.google.co.in'
end

When(/^I type "([^"]*)" in the search box$/) do |word_to_be_searched|
  fill_in('q', :with => word_to_be_searched)
end


And(/^I click on search button$/) do
  click_button('gbqfb')
end

Then(/^"([^"]*)" should be displayed in the results$/) do |word_to_be_displayed|
  page.should have_content(word_to_be_displayed)
end