#lets access the module from the previous folder
require_relative '../wms.rb'
require_relative './match.rb'


require 'pry'
require 'nokogiri'
require 'open-uri'

class WalesMatchSchedule::Scraper
    def get_page
      #set all html data from nokogirir into a variable
      doc = Nokogiri::HTML(open("http://www.wru.co.uk/eng/matchcentre/index.php"))
      doc.css(".odd.match-fixture.group_tests").each do |match|
              match = WalesMatchSchedule::Match.new
      end



    end


end


# =>      load "./lib/wms/scraper.rb"
# =>      new = WalesMatchSchedule::Scraper.new
# =>      new.get_page
# =>
# =>
# =>
# =>
