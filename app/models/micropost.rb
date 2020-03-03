class Micropost < ApplicationRecord
	# QWERT AAAAA
	  belongs_to :user
	  validates :content, length: { maximum: 140 }, presence: true
end
