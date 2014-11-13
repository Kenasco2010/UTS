class Bill < ActiveRecord::Base
	validates :name, :description, presence: true,
						length: {minimum: 3}

end
