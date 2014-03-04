Given(/^I am in maruti true value buy page$/) do
  visit MarutiTrueValueBuyPage
end

When(/^I select the City Chennai Dropdown$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.city_element.select_value('14')
  end
end

And(/^Select Model from the Model dropdown$/) do
  on(MarutiTrueValueBuyPage) do |page|
      page.model_element.select_value('AM')
  end
end

And(/^Select Price from the Price dropdown$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.price_element.select_value('0 AND 100000')
  end
end

And(/^Select Mileage from the Mileage dropdown$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.mileage_element.select_value('0 AND 30000')
  end
end

And(/^Select Reg. Year from the dropdown$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.regYear_element.select_value('2013')
  end
end

And(/^I click on Go Button$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.goButton
  end
end

Then(/^I check the number of cars available$/) do
  on(MarutiTrueValueBuyPage) do |page|
    page.numberOfCars.should have_content('0')
  end
end

Then(/^I check if i have traveresed to next page$/) do
  on (MarutiTrueValueBuyChennaiPage) do |page|
    page.textToValidate.should have_content(' : Please fill in the details of the car you want to buy below')
  end
end

And(/^select the cars in first and fifth position$/) do
  on(MarutiTrueValueBuyChennaiPage) do |page|
    page.firstCheckBox_element.click
    page.fifthCheckBox_element.click
  end
end

And(/^Click on Compare Selected button$/) do
  on(MarutiTrueValueBuyChennaiPage) do |page|
    page.compareButton
    sleep 5
  end
end

Then(/^Verify if "([^"]*)" is displayed$/) do |arg|
  on(MarutiTrueValueBuyChennaiPage) do |page|
    page.heading.should have_content (arg)
  end
end