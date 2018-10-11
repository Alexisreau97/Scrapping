require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def crypto_name(url)
  crypto_array = []
  price_array = []

  page = Nokogiri::HTML(open(url))

  crypto = page.css('td').select { |link| link['class'] == 'no-wrap currency-name' }
  price =  page.css('a').select { |link| link['class'] == 'price' }

  crypto.each { |link| crypto_array.push link['data-sort'] }
  price.each { |link| price_array.push link['data-usd']}

  crypto_hash = Hash[crypto_array.zip(price_array)]
  puts crypto_hash
end

def perform
  crypto_name("https://coinmarketcap.com/all/views/all/")
end

perform