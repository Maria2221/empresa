class Person < ApplicationRecord
	has_many :articles
	validates :first_name, presence: {message: "necesario"}
end