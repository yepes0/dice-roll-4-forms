class DiceController < ApplicationController
  def render_homepage
    render({ :template => "dice_templates/homepage" })
  end

  def process_roll
    @number_of_dice = params.fetch("dice").to_i
    @how_many_sides = params.fetch("sides").to_i

    @rolls = []



    @number_of_dice.times do
      dice = rand(1..@how_many_sides)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/process_roll" })
  end

end
