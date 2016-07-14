class BoxController < ApplicationController

def index
	@boxes = Box.all
end

end
