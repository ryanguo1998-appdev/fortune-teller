class NumbersController < ApplicationController
  def winners
    @lucky_numbers = Array.new

    5.times do
      rand_num = rand(1...100)
      
      @lucky_numbers.push(rand_num)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end
  
  def losers
    @unlucky_numbers = Array.new

    5.times do
      rand_num = rand(1...100)
      
      @unlucky_numbers.push(rand_num)
    end

    render({ :template => "lottery_stuff/no_woohoo.html.erb"})
  end
end
