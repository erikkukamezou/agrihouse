class CostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cost, only: [:show, :edit, :update, :destroy]
  before_action :login_user, only: [:edit, :destroy, :update]
  # before_action :set_q, only: [:index, :search]


  def index
    @costs = Cost.all.page(params[:page]).per(10)
    # @costs = Cost.page(params[:page]).per(10)
    # @q = Cost.ransack(params[:q])
    # @costs = @q.result(distinct: true)
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
    @cost_chart = [["売り上げ",@cost.sale],["肥料",@cost.fertilizer],["土",@cost.soil],["種・苗",@cost.seed]]
  end

  def edit
  end

  def update
    if @cost.update(cost_params)
      redirect_to costs_path, notice: "更新したよ"
    else
      render :edit
    end
  end

  def destroy
    @cost.destroy
    redirect_to costs_path, notice: "削除したよ"
  end

  # def search
  #   @results = @q.result
  # end

  private

  def login_user
    unless Cost.find(params[:id]).user.id.to_i == current_user.id
        redirect_to costs_path(current_user)
    end
  end

  # def set_q
  #   @q = Cost.ransack(params[:q])
  # end

  def cost_params
    params.require(:cost).permit(:sale, :fertilizer, :soil, :seed)
  end

  def set_cost
    @cost = Cost.find(params[:id])
  end
end
