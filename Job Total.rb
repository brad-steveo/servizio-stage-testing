require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Jobs Resource.rb"

describe "Opens Jobs resource and adds several line items" do
	it "Checks subtotal to make sure line items are being added and totalled correctly" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    loginname = "seleniumuser@yesco.com"
		password = "SUyesco123"
    searchjobid = "1027"
    line1item = "390-0019"
    qty1 = "4"
    line2item = "Labor"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    # Open job and add line items
    jobs = JobsResource.new(@driver)
    jobs.open_jobs()
    jobs.search_jobid(searchjobid)
    jobs.top_open()
    jobs.clear_lines()
    jobs.add_lines()
    jobs.line1_item(line1item)
    jobs.line1_quantity(qty1)
    jobs.line2_item(line2item)
    jobs.save()

    print jobs.line1_gettotal
    print "\n"
    print jobs.line2_gettotal
    print "\n"
    print "Subtotal: %s" % jobs.subtotal

    expect(jobs.line1_gettotal + jobs.line2_gettotal).to eql(jobs.subtotal)

	end
end
