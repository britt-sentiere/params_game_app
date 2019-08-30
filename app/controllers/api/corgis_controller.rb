class Api::CorgisController < ApplicationController
  def my_name
     @name = params[:name].upcase
    render 'my_name_view.json.jb'
  end

  def check_word
    @name = params[:name]

    if @name[0].upcase == "A"
    @message = "Hey, your name starts with the first letter of the alphabet!"
    end 

    render 'starts_with.json.jb'
  end

  def string_guess
    target_number = 8
    @number = params[:number].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low, aim higher in life and in your guess. "
    else
    @message = "You Win!"
    end 

    render 'string_guess.json.jb'
  end

  def segment_guess
   target_number = 28
    @number = params[:guess].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low, aim higher in life and in your guess. "
    else
    @message = "You Win!"
    end 
    render segment_guess.json.jb

  end

  def body_params
    @message = params[:hello]
    render 'body_params.json.jb'
  end
end
