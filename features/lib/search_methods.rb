class Search

	attr_accessor :searchquery, :keyword

	def initialize(browser)
		@browser = browser
	end

	def search(searchquery)
	  @browser.text_field(:id => "livefilter-input").set searchquery
    @browser.text_field(:id => "livefilter-input").send_keys :return
	end

	def highlight_keyword(keyword)
		@browser.spans(:class => "hl").each do |query|
  		query.text.should == keyword
  	end
  end
end