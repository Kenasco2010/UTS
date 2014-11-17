class Bill < ActiveRecord::Base

	has_many :companies, dependent: :destroy
	validates :name, :description, presence: true,
	length: {minimum: 3}

end
