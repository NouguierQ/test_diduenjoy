class Order < ApplicationRecord
	has_many :packages, foreign_key: 'orderid'
end