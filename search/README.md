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
#### will run the tests
`rake generate`
##### will generate and place a report in the /reports directory
##### from the json output of the tests that just ran
