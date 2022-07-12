require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Resource Test" do

  @driver = Selenium::WebDriver.for :chrome

  #Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  loginname = "masterchief@yesco.com"
  password = "MCyesco123"

  #Go to page
  @driver.navigate.to "https://stage.yesco.com/servizio/"

  #Logging in
  login = ServizioLoginPage.new(@driver)
  login.enter_loginname(loginname)
  login.enter_password(password)
  login.sign_in()

  activities = ActivitiesResource.new(@driver)
  it "Opens the Activities resource and posts load metrics to the command line" do
    activities.open_activities()
    activities.resource_performance()
    toptest = activities.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Activities grid" do
    activities.grid_options()
    activities.export_activities()
  end

  contracts = ContractsResource.new(@driver)
  it "Opens the Contracts resource and posts load metrics to the command line" do
    contracts.open_contracts()
    contracts.resource_performance()
    toptest = contracts.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Contracts grid" do
    contracts.grid_options()
    contracts.export_contracts()
  end

  patrols = PatrolsResource.new(@driver)
  it "Opens the Patrols resource and posts load metrics to the command line" do
    patrols.open_patrols()
    patrols.resource_performance()
    toptest = patrols.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Patrols grid" do
    patrols.grid_options()
    patrols.export_patrols()
  end

  jobs = JobsResource.new(@driver)
  it "Opens the Jobs resource and posts load metrics to the command line" do
    jobs.open_jobs()
    jobs.resource_performance()
    toptest = jobs.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Jobs grid" do
    jobs.grid_options()
    jobs.export_jobs()
  end

  estimates = EstimatesResource.new(@driver)
  it "Opens the Estimates resource and posts load metrics to the command line" do
    estimates.open_estimates()
    estimates.resource_performance()
    toptest = estimates.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Estimates grid" do
    estimates.grid_options()
		estimates.export_estimates()
  end

  invoices = InvoicesResource.new(@driver)
  it "Opens the Invoices resource and posts load metrics to the command line" do
    invoices.open_invoices()
    invoices.resource_performance()
    toptest = invoices.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Invoices grid" do
    invoices.grid_options()
    invoices.export_invoices()
  end

  customers = CustomersResource.new(@driver)
  it "Opens the Customers resource and posts load metrics to the command line" do
    customers.open_customers()
    customers.resource_performance()
    toptest = customers.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Customers grid" do
    customers.grid_options()
    customers.export_customers()
  end

  settings = SettingsResource.new(@driver)
  joblines = JobLinesResource.new(@driver)
  it "Opens the Job Lines resource and posts load metrics to the command line" do
    settings.open_settings()
    settings.open_joblines()
    joblines.resource_open()
    joblines.resource_performance()
    toptest = joblines.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Exports Job Lines resource" do
    joblines.grid_options()
    joblines.export_joblines()
  end

  invoicelines = InvoiceLinesResource.new(@driver)
  it "Opens the Invoice Lines resource and posts load metrics to the command line" do
    settings.open_settings()
    settings.open_invoicelines()
    invoicelines.resource_open()
    invoicelines.resource_performance()
    toptest = invoicelines.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Export Invoice Lines test" do
    invoicelines.grid_options()
    invoicelines.export_invoicelines()
  end

  contacts = ContactsResource.new(@driver)
  it "Opens the Contacts resource and posts load metrics to the command line" do
    settings.open_settings()
    settings.open_contacts()
    contacts.resource_open()
    contacts.resource_performance()
    toptest = contacts.top_refnumber.text
    expect(toptest).not_to eql("")
  end

  it "Export Contacts grid" do
    contacts.grid_options()
    contacts.export_contacts()
  end

  documents = DocumentsResource.new(@driver)
  it "Opens the Documents resource and posts load metrics to the command line" do
    settings.open_settings()
    settings.open_documents()
    documents.resource_open()
    documents.resource_performance()
    toptest = documents.top_name.text
    expect(toptest).not_to eql("")
  end

  it "Exports Documents grid" do
    documents.grid_options()
    documents.export_documents()
  end

end
