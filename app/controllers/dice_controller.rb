class DiceController < ApplicationController
  def home
    render({ :template => "dice_template/home" })
  end

  def two_six_sided
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    render({ :template => "dice_template/two" })
  end

  def two_ten_sided
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
    render({ :template => "dice_template/ten" })
  end

  def one_twenty_sided
    @rolls = rand(1..20)

    render({ :template => "dice_template/twenty" })
  end

  def five_four_sided
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end
    render({ :template => "dice_template/four" })
  end

  def random
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render({ :template => "dice_template/random" })
  end
end
