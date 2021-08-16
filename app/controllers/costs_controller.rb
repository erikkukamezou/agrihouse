class CostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cost, only: [:show, :edit, :update, :destroy]


  def index
    @costs = Cost.all
  end

  def new
    @cost = Cost.new
  end

  def create
    @cost = current_user.costs.build(cost_params)
    # @cost = Cost.new(cost_params)
    if @cost.save
      redirect_to costs_path, notice: "新規作成したよ"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def cost_params
    params.require(:cost).permit(:sale, :fertilizer, :soil, :seed)
  end

  def set_cost
    @cost = Cost.find(params[:id])
  end
end
