require 'pry'
class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|cap| return cap.name if cap.total_worth >= 1000000000.00}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    def funding_rounds
        FundingRound.all.select{|round| round.vc == self}
    end

    def portfolio
        funding_rounds.map{|round| round.startup.name}.uniq
    end

    def biggest_investment
        funding_rounds.max_by{|round| round.investment}
    end

    def invested(string)
        total_sum = 0
        arr = funding_rounds.select{|round| round.startup.domain == string}
        arr.each do |round|
            total_sum += round.investment
        end
        total_sum
    end
end
