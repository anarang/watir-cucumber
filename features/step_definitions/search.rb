Given(/^that I am on the home page$/) do
  @browser.goto(@url)
end

When(/^I search for echo$/) do
  Search.new(@browser).search("echo")
end

Then(/^I should see keyword echo highlighted in the search results$/) do
  Search.new(@browser).highlight_keyword("echo")
end

When(/^I search for print$/) do
  Search.new(@browser).search("print")
end

Then(/^I should see keyword print highlighted in the search results$/) do
  Search.new(@browser).highlight_keyword("print")
end



# When(/^I search for 'echo'$/) do
#   @browser.text_field(:id => "livefilter-input").set "echo"
#   @browser.text_field(:id => "livefilter-input").send_keys :return
# end

# Then(/^I should see keyword 'echo' highlighted in the search results$/) do
#   @browser.spans(:class => "hl").each do |query|
#   	query.text.should == "echo"
#   end
# end
