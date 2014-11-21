class Company < ActiveRecord::Base
	belongs_to :bill
	has_attached_file :logo, styles: { medium: "100x100#"}
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

end
