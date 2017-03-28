class TurnoversController < ApplicationController
  def index
    @turnovers = Turnover.where(date: Time.new.in_time_zone.to_date.to_s).order('volumn DESC')
  end

  def search
    date = date_init(params[:date])
    number = number_init(params[:number])

    @turnovers =
      if !date.blank? && !number.blank?
        Turnover.where('number like ? and date = ?', "%#{number}%", date).order('volumn DESC')
      elsif !date.blank? && number.blank?
        Turnover.where(date: date).order('volumn DESC')
      else
        Turnover.where('number like ?', "%#{number}%").order('volumn DESC')
      end

    respond_to do |format|
      format.html
      format.json { render json: @turnovers }
    end
  end

  def date_init(date)
    date == 'null' ? nil : date
  end

  def number_init(number)
    number == 'null' ? nil : number
  end
end
