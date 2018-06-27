ReadMe
========================
##### make sure your in the search directory
`gem install bundler`
`bundle install`
##### set environment variable for browser (chrome, firefox, etc)
##### This assumes you have [chromedriver](http://chromedriver.chromium.org/) or [marionette](https://firefox-source-docs.mozilla.org/testing/marionette/marionette/index.html) installed
`export BROWSER=chrome`
#### make sure your in the search directory
`rake` 
#### output report will be in output/my_test_report.html
#### note running cucumber features/paxos_search.feature will not generate the report
