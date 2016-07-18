class ItemsController < ApplicationController
	def index
		@items = Item.all
		@boxes = Box.all
	end
	def show
		@item = Item.find(params[:id])
	end
	def new
		puts request.params
    	@boxes = Box.find(params[:box_id])
  		@item = Item.new
	end
	def create
  		# @item = Item.new(params.require(:item).permit(:name, :description, :weight, :value))
  		# @item.save
  		# redirect_to boxes_path

  		puts params
  		box = Box.find(params[:item][:box_id])
  		Item.create(params.require(:item).permit(:name, :description, :weight, :value, :box_id))

  		redirect_to box
	end
	def edit
    	@item = Item.find(params[:box_id])
	end
	def update
    	item = Item.find(params[:id])
    	item.update_attributes(params.require(:item).permit(:name, :description, :weight, :value))
    	redirect_to item
	end

	def destroy
    	@item = Item.find(params[:id])
    	@item.destroy
    	redirect_to items_path
	end
end