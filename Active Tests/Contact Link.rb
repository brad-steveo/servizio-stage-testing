require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Links a contact to a customer" do
	it "Verifies that linking contact process was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		customerid = "1148"
		contactsearchname = "Link Contact Test"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.search_customerid(customerid)
		customers.top_open()

		@driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")

		contacts = ContactsResource.new(@driver)
				if
					begin
						contacts.first_contact_name.displayed? == true
					rescue Selenium::WebDriver::Error::NoSuchElementError
						false
					end
					contacts.remove_top_contact()
					contacts.link_existing_button()
				else
					contacts.link_existing_button()
				end

		contacts.link_contact(contactsearchname)

		expect(contacts.first_contact_name.text).to include(contactsearchname)

		contacts.first_billing_checkbox()
		contacts.first_site_checkbox()

		customers.save_close

		closeiframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
		closeiframebuffer.until {customers.top.displayed?}

		@driver.execute_script("arguments[0].scrollIntoView();", customers.top_site_contact)

		databuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
		databuffer.until {customers.top_billing_contact.text.include?(contactsearchname)}

		expect(customers.top_billing_contact.text).to include(contactsearchname)
		expect(customers.top_site_contact.text).to include(contactsearchname)

		print "Billing: \n%s" % customers.top_billing_contact.text
		print "\n\nSite: \n%s" % customers.top_site_contact.text

    end
  end
