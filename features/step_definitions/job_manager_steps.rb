Given(/^an input '(.*?)'$/) do |input|
  @input = input
end

When(/^the job manager is run$/) do
  puts @input
  @output = `ruby job_manager.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then(/^the output should be "(.*?)"$/) do |output|
  expect(@output.chomp).to eq(output)
end
