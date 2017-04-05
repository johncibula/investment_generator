class IndustriesController < ApplicationController
  def index
    @industries = Industry.all
  end

  def show
    @industry = Industry.find_by(:id => params[:id])
    @value_chains = @industry.value_chains
  end
end
