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
          doc.css(".match-fixture").collect do |event|
                  match = WalesMatchSchedule::Match.new
                  match.date = event.css(".field_DateAbbrev").text
                  match.time = event.css(".field_TimeLong").text
                  match.comp = event.css(".field_CompStageAbbrev").text
                  match.home = event.css(".field_HomeDisplay").text
                  match.score = event.css(".field_Score").text.delete(", ")
                  match.away = event.css(".field_AwayDisplay").text
                  match.venue = event.css(".field_VenName").text
    #I am having a difficult time isolating the link url in match.more_info
                  match.more_info = event.css(".field_Links").text
          end
    end
#The #get_matches instance method will be responsible for using a CSS selector to grab all of the HTML elements that contain a match. In other words, the return value of this method should be a collection of Nokogiri XML elements, each of which describes a match.
# get_matches and further instance methods will utilize the above commented out nokogiri selectors
end


# =>      load "./lib/wms/scraper.rb"
# =>      new = WalesMatchSchedule::Scraper.new
# =>      new.get_page
# =>
# =>
# =>
# =>
