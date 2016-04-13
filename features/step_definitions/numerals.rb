

Given(/^the input "(.*?)"$/) do |arg1|
  @input = arg1
end

When(/^the converter is run$/) do
  @output = `javac Main.java && java Main {@input}`
  raise('Command failed!') unless $?.success?
end

When(/^the input is (\d+)$/) do |arg1|
  @output = `javac Main.java && java Main arg1`
  raise('Command failed!') unless $?.success?
end

Then(/^the output should be "(.*?)"$/) do |arg1|
  @output.should == arg1
end

