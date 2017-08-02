# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "WalesMatchSchedule"
  spec.version       = '0.0.2.0'
    #convention for Version A.B.C.D
    # => A= major software functionality change
    # => B= minor software functionality change (making things more convenient)
    # => C= software update to fiix bugs in program to make B function correctly
    # => D= minor changes that do not affect the the program as a whole (ie comments, font, etc)
  spec.authors       = ["Alex Jelly"]
#  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{Wales Rugby Upcoming Match Scraper}
  spec.description   = %q{This program will scrape the Wales Rugby Union Website for upcoming match information.}
  spec.homepage      = "https://github.com/byojelly/wales-matches-cli-app"
  spec.license       = "MIT"

  spec.files         = ['lib/walesmatchschedule.rb']
  spec.executables   = ['bin/walesmatchschedule']
# spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end
