class BillsController < ApplicationController
	layout 'Main'
	def index
		@bill = Bill.all
		@bill = Bill.page(params[:page]).per(2)
		# @bills = Bill.paginate(:page => params[:page], :per_page => 2)
	end
	def new
		@bill = Bill.new
	end
	def create
		@bill = Bill.new(bill_params)

		if @bill.save
			redirect_to @bill
		else
			render 'new'
		end
	end

	def update
		@bill = Bill.find(params[:id])

		if @bill.update(bill_params)
			flash[:notice] = 'Bill was successfully updated.'
			redirect_to @bill
		else
			render 'edit'
		end
	end
	def payment
		@bill = Bill.find(params[:id])
	end
	def edit
		@bill = Bill.find(params[:id])
	end
	
	
	def show
		@bill = Bill.find(params[:id])
	end
	def showpaymentperbill
		@bill = Bill.find(params[:id])
		#This section  of the code displays all the lists of bills
		# @payment = Payments.find(params[:bill_id])
	end
	def destroy
		@bill = Bill.find(params[:id])
		@bill.destroy
		
		redirect_to bills_path
	end

end
private
def bill_params
	params.require(:bill).permit(:name, :description)
end

