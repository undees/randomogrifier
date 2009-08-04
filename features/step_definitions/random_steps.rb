Given /^a random seed of (\d+)$/ do
  |seed|

  @app = Randomogrifier.new
  @app.seed = seed.to_i
end

When /^I request (\d+) random numbers$/ do
  |n|

  @numbers = (1..n.to_i).map do
    @app.randomogrify!
    @app.number.to_i
  end
end

Then /^I should see the numbers "(.*)"$/ do
  |numbers|

  expected = numbers.split(',').map {|n| n.to_i}
  @numbers.should == expected
end
