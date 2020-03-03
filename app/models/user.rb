class User < ApplicationRecord
	# ABC CDG
	  has_many :microposts
	  validates :name, presence: true
      validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , presence: true
      def to_param
      	"#{id}-#{name}".parameterize
      end
end
