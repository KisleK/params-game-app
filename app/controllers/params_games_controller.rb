class ParamsGamesController < ApplicationController
  def query
    
      @query = params["name"].upcase
        if @query.first == "A"
          @result = "Hey, your name starts with the first letter of the alphabet!"
       else
          @result = "Your name is #{@query}"
       end
    end

 
    def guess
    @user_guess = params["submission"].to_i
    winning_number = 36

      if winning_number < @user_guess
        @answer_message = "too high"

      elsif winning_number > @user_guess
        @answer_message = "to low"

      else
       @answer_message = "Bingo- bango"
     end
   end


   def segement_guess
       @user_guess = params["submission"].to_i
       winning_number = 36

         if winning_number < @user_guess
           @answer_message = "too high"

         elsif winning_number > @user_guess
           @answer_message = "to low"

         else
          @answer_message = "Bingo- bango"
        end
      end

   end