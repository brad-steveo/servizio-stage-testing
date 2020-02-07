require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "Classes"

describe "Adds a contact to a customer" do
	it "Verifies that adding contact process was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		customerid = "1147"
		contactname = "Selenium Contact #{timestamp}"
		contactphone1 = '123.456.7890'
		contactemail1 = 'selenium@selenium.com'
		contactnotes = "Selenium Notes #{timestamp}"

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
					contacts.add_contact_button()
				else
					contacts.add_contact_button()
				end

		contacts.contact_name(contactname)
		contacts.contact_phone1(contactphone1)
		contacts.contact_email1(contactemail1)
		contacts.contact_notes(contactnotes)
		contacts.save_close()

		#Closing a popup within a popup
		@driver.switch_to.frame(0)

		expect(contacts.first_contact_name.text).to include(contactname)
		expect(contacts.first_contact_notes.text).to include(contactnotes)

		contacts.first_billing_checkbox()
		contacts.first_site_checkbox()

		customers.save_close

		@driver.execute_script("arguments[0].scrollIntoView();", customers.top_site_contact)

		expect(customers.top_billing_contact.text).to include(contactname)
		expect(customers.top_site_contact.text).to include(contactname)

		print "Billing: \n%s" % customers.top_billing_contact.text
		print "\n\nSite: \n%s" % customers.top_site_contact.text

    end
  end
