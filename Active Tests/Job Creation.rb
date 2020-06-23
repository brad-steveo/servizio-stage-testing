require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates a Job" do
	it "Verifies that Job Creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		loopcount = 1
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		jobs = JobsResource.new(@driver)
		jobs.open_jobs()

		#Job Creation
		def job_creator()

			jobs = JobsResource.new(@driver)

			#Record Variables
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			select = "Selenium Test Customer"
			jobname = "Selenium Job #{timestamp}"
			joblocation = "Test Site"
			jobtype = "Service"
			jobpatrol = "1400"
			jobestimate = "1007"
			nte = "1500"
			scopeofwork = "Scope of Work #{timestamp}"
			additionalnotes = "Additional Notes #{timestamp}"
			specialinstructions = "Special Instructions #{timestamp}"
			privatenotes = "Private Notes #{timestamp}"

			currenttopref = jobs.top_refnumber.text

			jobs.create_job()
			jobs.select_customer(select)
			jobs.name(jobname)
			jobs.location(joblocation)
			jobs.type(jobtype)
			jobs.patrol(jobpatrol)
			jobs.estimate(jobestimate)
			jobs.nte(nte)
			jobs.notes_tab()
			jobs.scope_of_work(scopeofwork)
			jobs.additional_notes(additionalnotes)
			jobs.special_instructions(specialinstructions)
			jobs.private_notes(privatenotes)
			jobs.save_close()

			wait = Selenium::WebDriver::Wait.new(:timeout => 5)
			wait.until {jobs.top_refnumber.text != currenttopref}

			#Verification
			print jobs.top_refnumber.text
			print " - "
			print jobs.top.text
			print "\nStatus: "
			print jobs.top_status.text
			print "\nType: "
			print jobs.top_type.text
			print "\n\n"
			expect(jobs.top.text).to include(jobname)
			expect(jobs.top_type.text).to include(jobtype)
		end

		loop do
			i += 1
			puts job_creator()
			if i == loopcount
				break
			end
		end

	end
end
