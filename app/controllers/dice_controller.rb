class DiceController < ApplicationController
  def rolldice
    @p = params

    render({ :template => "dice_templates/one_d_six.html.erb" })
  end
end
