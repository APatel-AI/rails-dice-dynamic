class DiceController <ApplicationController

  def home
    render({:template => "dice_template/home"})
  end

  def two_six_sided
    render({:template => "dice_template/two"})
  end
  def two_ten_sided
    render({:template => "dice_template/ten"})
  end
  def one_twenty_sided
    render({:template => "dice_template/twenty"})
  end
  def five_four_sided
    render({:template => "dice_template/four"})

  end

end
