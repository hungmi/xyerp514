class CustomersController < ApplicationController
	before_action :find_customer

	def index
	end

	private
	def find_customer
		@customer = Customer.find(params[:id]) if params[:id]
	end
end