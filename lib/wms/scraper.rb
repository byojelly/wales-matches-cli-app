#lets access the module from the previous folder
require_relative '../wms.rb'
require_relative './match.rb'


require 'pry'
require 'nokogiri'
require 'open-uri'

class WalesMatchSchedule::Scraper
    def get_page
      doc = Nokogiri::HTML(open("http://www.wru.co.uk/eng/matchcentre/match_centre.php?section=overview&fixid=227061"))



    end


end


# =>      load "./lib/wms/scraper.rb"
# =>      new = WalesMatchSchedule::Scraper.new
