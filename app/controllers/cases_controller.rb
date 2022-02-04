class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def new
    @case = Case.new
  end

  def create

  end

end
