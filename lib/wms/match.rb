require_relative '../wms.rb'

class WalesMatchSchedule::Match

  attr_accessor :date, :time, :comp, :home, :score, :away, :venue, :more_info
  #lets keep track of a class array of all matches
  @@all = []
  def initialize(date=nil, time=nil)
      @date = date
      @time = time
      @@all << self
  end
  def self.reset_all
      @@all.clear
  end

end
