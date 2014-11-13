class BillsController < ApplicationController
	layout 'Main'
	def index
		@bills = Bill.all
	end

	def create
		@bill = Bill.new(bill_params)

		if @bill.save
		redirect_to @bill
		else
		render 'new'
		end
	end

	def new

	end

	def edit
		
	end

	def show
		@bill = Bill.find(params[:id])
	end

end
private
def bill_params
	params.require(:bill).permit(:name, :description)
	
end
