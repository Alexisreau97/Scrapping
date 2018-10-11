require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def depute_name(url)
  name_array = []

  page = Nokogiri::HTML(open(url))
  name = page.css('#deputes-list').select { |link| link['class'] == 'col3' }

  puts name
end

depute_name("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique")


#projet non fini