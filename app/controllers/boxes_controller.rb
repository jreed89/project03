class BoxesController < ApplicationController

def index
	@boxes = Box.all
	@items = Item.all
end
def show
	@boxes = Box.find(params[:id])
	@items = @boxes.items
end
def new
	@boxes = Box.new
end
def create
	@boxes = Box.new(params.require(:box).permit(:label, :length, :width, :height, :sealed, :arrived))
	if @boxes.save
		redirect_to boxes_path
	else
		puts "ERROR"
	end
end
def edit
	@boxes = Box.find(params[:id])
end
def update
	@boxes = Box.find(params[:id])
	if @boxes.update(params.require(:box).permit(:label, :length, :width, :height, :sealed, :arrived))
		redirect_to items_path
	else
		puts "ERROR"
	end	
end
def destroy
    	@boxes = Box.find(params[:id])
   		@boxes.destroy
    	redirect_to items_path
	end
end
