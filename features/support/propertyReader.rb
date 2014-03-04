require 'yaml'
class PropertyReader
  def initialize
    yml = YAML::load(File.open('features/support/userinfo.yml'))
    @marutiTrueValuePageurl = yml ['marutiTrueValuePageurl']
    @cityDropDown = yml ['cityDropDown']
    @modelDropDown = yml ['modelDropDown']
    @priceDropDown = yml ['priceDropDown']
    @mileageDropDown = yml ['mileageDropDown']
    @regYearDropDown = yml ['regYearDropDown']
    @goButton=yml['goButton']
    @numberOfCars=yml['numberOfCars']
    @textToValidate=yml['textToValidate']
    @firstCheckBox=yml['firstCheckBox']
    @fifthCheckBox=yml['fifthCheckBox']
    @compareButton=yml['compareButton']
    @heading=yml['heading']
  end
end