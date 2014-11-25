class PaymentsController < ApplicationController
	layout 'Main'
	# def new
	# 	@payment = Payment.new
	# end
	def create
		@bill = Bill.find(params[:bill_id])
		@payments = @bill.payments.create(payment_params)
		redirect_to bill_payments_path(@bill)
	end
	def index
		#This code is for the pagination
		@payment = Payment.page(params[:page]).per(3)
		@payment = Payment.all
	end
	def payment

	end
	# def paidorNot
	# 	paidornot = ["Non","Paid","Not Paid"]
	# end
	def new
		@payment = Payment.new
	end

	# def index
	# 	# @bill = Bill.find(2)
	# end
	def show
		@bill = Bill.find(params[:id])
	end
	def destroy

	end

	private
	def payment_params
		params.require(:payment).permit(:bill_status, :amount_due, :amount_paid, :balance, :date_of_payment, :next_payment_date, :comment, :paid_by)
	end
end