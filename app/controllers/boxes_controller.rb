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
	if @boxes.update_attributes(params.require(:box).permit(:label, :length, :width, :height, :sealed, :arrived))
		redirect_to box
	else
		puts "ERROR"
	end	
end
def destroy
    	@boxes = Box.find(params[:id])
   		@boxes.destroy

    	redirect_to boxes_path
	end
end
