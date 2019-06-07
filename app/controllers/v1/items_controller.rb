class V1::ItemsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @items = Item.all.order('name ASC')
    render json: @items, status: :ok
  end
  
  def show
    @item = Item.find(params[:id])
    render json: @item, status: :ok
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item, status: :ok
    else
      render json: @item.errors, status: :unprocessable_identity
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name, :variety, :ss_amt_wt, :ss_unit_wt, :ss_amt_vol, :ss_unit_vol,
      :beans, :berries, :other_fruits, :cruciferous_vegetables, :greens, :other_vegetables,
      :flaxseeds, :nuts, :turmeric, :whole_grains, :other_seeds,
      :cals, :fat, :carbs, :protein, :iron
      )
  end
end
