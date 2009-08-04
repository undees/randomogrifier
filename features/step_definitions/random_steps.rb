Given /^a random number generator$/ do
  @app = Randomogrifier.new
end

When /^I request a random number$/ do
  @app.randomogrify!
end

Then /^I should see a number$/ do
  @app.number.should =~ /[0-9]+/
end
