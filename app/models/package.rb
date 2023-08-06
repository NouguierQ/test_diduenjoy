class Package < ApplicationRecord
	belongs_to :order, foreign_key: 'orderid'
	has_many :items, foreign_key: 'packageid'
end