class UsersController < ApplicationController
  def index
  	@items = User.all
  	@users = User.where
  	@lewis = @items.find_all_by_name('Lewis')
  	lewisBalance = 900.00
  	xueminBalance = 900.00
  	@lewisSpent = lewisBalance - User.where(:name => 'Lewis').sum(:amount).round(2)
  	@xueminSpent = xueminBalance - User.where(:name => 'Xuemin').sum(:amount).round(2)
  	@xuemin = @items.find_all_by_name('Xuemin')
  end

  def new
  	@item = User.new
  end

  def create
  	@item = User.new(user_params)
  	if @item.save
    redirect_to '/', :notice => "Item added"
    else
      render 'new'
    end
  end
   


  def destroy
  	@item = User.find(params[:id])
  	@item.destroy
  	redirect_to users_path, :notice => "Your Item has been removed"
  end

  def show
  end

  def edit
  	@item = User.find(params[:id])
  end
  
  def update
  	@items = User.find(params[:id])
  	@items.update_attributes(user_params)
  	redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:name,:title,:details,:amount)
  end
end
