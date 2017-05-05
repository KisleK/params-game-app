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
     winning_number = 42

      if winning_number < @user_guess
        @answer_message = "too high"

      elsif winning_number > @user_guess
        @answer_message = "to low"

      else
       @answer_message = "Bingo- bango"
     end
   end


   def segement_guess
       @user_guess = params["wildcard"].to_i
       winning_number = 36

         if winning_number < @user_guess
           @answer_message = "too high"

         elsif winning_number > @user_guess
           @answer_message = "to low"

         else
          @answer_message = "Bingo- bango"
        end
      end

      def form_show

      end 
      def form_send
        @message = params["form_message"]

      end

      def number_show
      end

      def number_send
        @user_guess = params["guess"].to_i
        winning_number = 42
          if winning_number < @user_guess
            @guess_message = "too high"

          elsif winning_number > @user_guess
            @guess_message = "to low"

          else
            @guess__message = "Bingo- bango"
          end
      end
      

     
   end