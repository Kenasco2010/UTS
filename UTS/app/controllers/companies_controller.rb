class CompaniesController < ApplicationController
	def create
		@bill = Bill.find(params[:bill_id])
		@companies = @bill.companies.create(company_params)
		redirect_to bill_path(@bill)

	end
	def destroy
		@bill = Bill.find(params[:bill_id])
		@company = @bill.companies.find(params[:id])
		@company.destroy
		redirect_to bill_path(@bill)
	end
	
	private
	def company_params
		params.require(:company).permit(:name, :address, :contact, :logo)
	end
end
