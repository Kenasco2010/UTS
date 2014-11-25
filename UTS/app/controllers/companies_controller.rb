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

	# def update
	# 	@company = Company.find(params[:id])

	# 	if @company.update(company_params)
	# 		flash[:notice] = 'Company was successfully updated.'
	# 		redirect_to @bill
	# 	else
	# 		render 'edit'
	# 	end
	# 	def show
	# 		@company = Bill.find(:id)
	# 	end
	# 	def edit
	# 		@company = Company.find(params[:id])
	# 	end

		private
		def company_params
			params.require(:company).permit(:name, :address, :contact, :logo)
		end
	end
