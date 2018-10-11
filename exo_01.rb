require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def get_the_email_of_a_townhal_from_its_webpage(url)
  page = Nokogiri::HTML(open(url))   
  puts page.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
end

get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/vaureal.html")


def get_all_the_urls_of_val_doise_townhalls(url)
  page = Nokogiri::HTML(open(url))   
  puts page.css('a.lientxt')[1]['href']
end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")