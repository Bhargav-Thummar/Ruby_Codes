require "open-uri"
require "nokogiri"

# require "watir"

# browser = Watir::Browser.new(:chrome)

# browser.goto("www.google.com")

cities = ["Ahmedabad", "Rajkot", "Surat"]

# search_params = ["Geography", "Demographics"]
# url = "https://en.wikipedia.org/wiki/Ahmedabad#Geography"

cities.each do |city|
  url = "https://en.wikipedia.org/wiki/#{city}"

  document = open(url)
  content = document.read
  parsed_content = Nokogiri::HTML(content)
  content_dom = parsed_content.css('#content')

  puts "=============================================================="
  puts "City: #{city}"
  puts content_dom.css("#coordinates").inner_text.split("/")[0]
  puts "Area = #{content_dom.css(".mergedtoprow").css("th").at("th:contains('Area')").parent.next_element.inner_text}"
  puts "---------------------------------------------------------------"
end
