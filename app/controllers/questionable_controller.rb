class QuestionableController < ApplicationController
  def index
    countries = Country.find(:all, conditions: ['name LIKE(?)', "%#{ params[:q] }%"])
    cities = City.find(:all, conditions: ['name LIKE(?)', "%#{ params[:q] }%"])

    @questionable = countries + cities

    respond_to do |format|
      format.json { render }
    end
  end
end
