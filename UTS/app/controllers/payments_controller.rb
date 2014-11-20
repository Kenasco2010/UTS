class PaymentsController < ApplicationController
	
	# def new
	# 	@payment = Payment.new
	# end
	def create
		@bill = Bill.find(params[:bill_id])
		@payments = @bill.payments.create(payment_params)
		redirect_to bill_path(@bill)
	end
	def show
		@bill = Bill.find(1)
	end
	def payment
		
	end
	def new
		@payment = Payment.new
	end

	# def index
	# 	@bill = Bill.find(2)

	# end
	def update

	end
	def destroy

	end

	private
	def bill_params
		params.require(:bill).permit(:bill_status, :amount_due, :amount_paid, :balance, :date_of_payment, :next_payment_date, :comment, :paied_by)
	end
end