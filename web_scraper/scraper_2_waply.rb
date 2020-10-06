require "open-uri"
require "nokogiri"
require "wappalyzer"

url = "https://www.airbnb.com/"
output = Wappalyzer::Detector.new.analyze(url)
puts output

# OUTPUT

# {"Lo-dash"=>{"categories"=>["javascript-frameworks"], "confidence"=>100, "version"=>""}, "Nginx"=>{"categories"=>["web-servers"], "confidence"=>100, "version"=>""}, "React"=>{"categories"=>["javascript-frameworks"], "confidence"=>100, "version"=>"0"}, "Ruby on Rails"=>{"categories"=>["web-frameworks"], "confidence"=>50, "version"=>""}, "Ruby"=>{"categories"=>["programming-languages"], "confidence"=>50, "version"=>""}}

# This is merely a port of the javascript parts of Wappalyzer extension for Firefox and Chrome. It analyzes a url and tries to guess what software it uses (like server software, CMS, framework, programming language).
# gem install wappalyzer -v 0.1.0