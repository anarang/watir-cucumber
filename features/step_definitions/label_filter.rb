When(/^I select filter 'Label (\d+)' from the left facet$/) do |arg1|
  @browser.div(:class => "filters controls").li(:text => "Label 1").wait_until_present
  sleep 2
  @browser.div(:class => "filters controls").li(:text => "Label 1").click
  sleep 2
end

Then(/^I should see all the 'Label (\d+)' Placeholders on the page$/) do |arg1|
  @browser.h3s(:class => "title").each do |title|
  	if title.visible?
  	  title.text.should == "Label 1"
  	end
  end
end

When(/^I select the filter Label (\d+) form the left facet$/) do |arg1|
  @browser.div(:class => "filters controls").li(:text => "Label 2").wait_until_present
  sleep 2
  @browser.div(:class => "filters controls").li(:text => "Label 2").click
  sleep 2
end

Then(/^I should see all placeholders from Label (\d+) on the page$/) do |arg1|
  @browser.h3s(:class => "title").each do |title|
  	if title.visible?
  	  title.text.should == "Label 2"
  	end
  end
end
