class Item < ApplicationRecord
	belongs_to :package, foreign_key: 'packageid'
end