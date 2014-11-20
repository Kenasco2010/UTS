class Bill < ActiveRecord::Base

	has_many :companies, dependent: :destroy
	has_many :payments, dependent: :destroy
	validates :name, :uniqueness => {:message => "This Bill already exist in the System"}
	validates :name, :description, presence: true,
	length: {minimum: 3}

end
