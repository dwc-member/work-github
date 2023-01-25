class Admin::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  # 投稿データの保存
  def create
    @item = Item.new(item_params)
    @item.admin_id = current_admin.id
    @item.save
    redirect_to admin_item_path
  end

  def show
  end

  def edit
  end

  def update
  end

  # 投稿データのストロングパラメータ
  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_active)
  end
end
