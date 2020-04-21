require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "CSS Testing" do
	it "Tests various CSS methods" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		loopcount = 1
		i = 0
		test = "Does this appear?"
		test2 = "Sales"
		search = "626"
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		searchdocumentname = "20200325171116"
		searchdocumentextension = "png"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#CSS Testing
		buffers = Buffers.new(@driver)
		settings = SettingsResource.new(@driver)
		documents = DocumentsResource.new(@driver)

		settings.open_settings()
		settings.open_documents()
		buffers.ajax_buffer()
		documents = DocumentsResource.new(@driver)
		documents.search_documentname(searchdocumentname)
		print "Documents Search (NAME): \n"
		print "%s \n" % documents.top_name.text
		print "\n"
		expect(documents.top_name.text).to include(searchdocumentname)

		documents.search_reset()
		buffers.ajax_buffer()
		documentswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		documentswait.until {documents.search_documentname_field['value'].empty? == true}

		documents.search_documentextension(searchdocumentextension)
		buffers.ajax_buffer()
		print "Documents Search (EXTENSION): \n"
		print "%s \n" % documents.top_extension.text
		print "\n"
		expect(documents.top_extension.text).to include(searchdocumentextension)

		sleep(5)

	end
end
