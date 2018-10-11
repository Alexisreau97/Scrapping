require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def depute_name(url)
  name_array = []

  page = Nokogiri::HTML(open(url))
  name = page.xpath('/html/body/div[3]/div/div/section/div/article/div[3]/div/div[3]/div[1]/ul[1]/li[1]/a').text

  puts name
end

depute_name("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique")
