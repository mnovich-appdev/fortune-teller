class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @loser_numbers = Array.new
    5.times do
      random_losers = rand(1...100)
      @loser_numbers.push(random_losers)
    end

    render({:template => "lottery_stuff/ohno.html.erb"})
end
end
