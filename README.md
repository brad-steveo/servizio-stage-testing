# Servizio Stage Testing
Selenium regression tests for Servizio

## Requires a Ruby installation

Install Ruby Version Manager using a Bash shell:

    \curl -sSL https://get.rvm.io | bash -s stable'


Install most recent stable version of Ruby:

    rvm install 2.5.1


## Requires Selenium WebDriver installation

URL for Selenium downloads page:

https://selenium.dev/downloads/

URL for ChromeDriver (WebDriver for the Google Chrome browser)

https://chromedriver.chromium.org/downloads


## Required Ruby Gems

It is recommended to add these to a gemfile in your local project folder.  
Use the bundler after completing the gemfile.

Selenium WebDriver:
https://rubygems.org/gems/selenium-webdriver

rspec:
https://rubygems.org/gems/rspec

require_all:
https://rubygems.org/gems/require_all


## Recommended edits to .bashrc file

Add rspec to PATH:

    export PATH=$PATH: *path to folder where gemfile is located*   

Add RVM to PATH:

    export PATH="$PATH:$HOME/.rvm/bin"

## Other Useful Links

Docs for using Selenium API:

https://selenium.dev/selenium/docs/api/rb/Selenium.html

Rspec expectation cheat sheet:

https://www.rubypigeon.com/posts/rspec-expectations-cheat-sheet/
