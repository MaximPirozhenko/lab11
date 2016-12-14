include CalcHelper
class CalcController < ApplicationController
  def input
  end

  def view
    if result = Posl.find_by_inputed(params[:v2])
      @inputed = result.inputed
      @all = result.all
      @kolvo_posl = result.kolvo
      @max_posl = result.max_p
      else
      processing(params[:v2])
      if @kolvo_posl != 0
        Posl.create :inputed => @inputed,
          :all => @all,
          :kolvo => @kolvo_posl,
          :max_p => @max_posl
      end
    end
  end

  def xml
    @xml = Posl.all
    render xml: @xml
  end

end
