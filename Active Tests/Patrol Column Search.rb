require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Patrols resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchpatrolid = "1001"
		searchpatrolname = "parleys"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

    # Click on Patrols and search columns
    patrols = PatrolsResource.new(@driver)
    patrols.open_patrols()
		patrols.grid_options()
		patrols.show_oldpatrols()
    buffers.ajax_buffer()
    patrols.search_patrolid(searchpatrolid)
    buffers.ajax_buffer()
    print "Patrols Search (ID): \n"
    print "%s \n" % patrols.top_refnumber.text
    print "\n"
    expect(patrols.top_refnumber.text).to include(searchpatrolid)

    patrols.search_reset()
    buffers.ajax_buffer()
    patrolswait = Selenium::WebDriver::Wait.new(:timeout => 5)
    patrolswait.until {patrols.search_patrolid_field['value'].empty? == true}

    patrols.search_patrolname(searchpatrolname)
    buffers.ajax_buffer()
    print "Patrols Search (NAME): \n"
    print "%s \n" % patrols.top.text
    print "\n"
    expect(patrols.top.text.downcase).to include(searchpatrolname)

	end
end
