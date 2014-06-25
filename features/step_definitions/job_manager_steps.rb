Given(/^an empty string input$/) do
 @input = ""
end

When(/^the job manager is run$/) do
  @output = `ruby job_manager.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then(/^the output should be an empty sequence$/) do
 expect(@output).to eq("")
end
