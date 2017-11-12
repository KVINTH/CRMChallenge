class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers_alphabetical = Customer.order(:full_name)
  end

  def missing_email
    @customers_missing_email = Customer.where(email_address: [nil, ''])
  end
end
