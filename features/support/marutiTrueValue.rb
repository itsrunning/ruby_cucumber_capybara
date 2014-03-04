require_relative 'propertyReader'
class MarutiTrueValueBuyPage
  include PageObject
  prop = PropertyReader.new
  page_url (prop.instance_variable_get(:@marutiTrueValuePageurl))
  select_list(:city,:id=>prop.instance_variable_get(:@cityDropDown))
  select_list(:model,:id=>prop.instance_variable_get(:@modelDropDown))
  select_list(:price,:id=>prop.instance_variable_get(:@priceDropDown))
  select_list(:mileage,:id=>prop.instance_variable_get(:@mileageDropDown))
  select_list(:regYear,:id=>prop.instance_variable_get(:@regYearDropDown))
  button(:goButton,:id=>prop.instance_variable_get(:@goButton))
  span(:numberOfCars,:id=>prop.instance_variable_get(:@numberOfCars))
end

class MarutiTrueValueBuyChennaiPage
  include PageObject
  prop = PropertyReader.new
  span(:textToValidate,:class=>prop.instance_variable_get(:@textToValidate))
  checkbox(:firstCheckBox,:id=>prop.instance_variable_get(:@firstCheckBox))
  checkbox(:fifthCheckBox,:id=>prop.instance_variable_get(:@fifthCheckBox))
  button(:compareButton,:id=>prop.instance_variable_get(:@compareButton))
  cell(:heading,:xpath=>prop.instance_variable_get(:@heading))
end