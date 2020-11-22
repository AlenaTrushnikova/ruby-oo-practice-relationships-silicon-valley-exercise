require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("Spotify", "Daniel Ek", "Domain1")
s2 = Startup.new("Flatiron", "Ix", "Domain2")
s3 = Startup.new("Instagram", "Adam", "Domain3")

vc1 = VentureCapitalist.new("Matt Cohler", 1000000000.00)
vc2 = VentureCapitalist.new("Rebecca Lynn", 50000.00)
vc3 = VentureCapitalist.new("David Pakman", 8000000.00)

fr1 = FundingRound.new(s1, vc1, "Angel", 30000.00)
fr2 = FundingRound.new(s1, vc1, "Seed", 10000000.00)
fr3 = FundingRound.new(s1, vc2, "Angel", 30000.00)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line