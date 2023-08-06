class ExcelImport
	def self.
		workbook = RubyXL::Parser.parse("./import/database.xlsx")
		workbook.worksheets.each do |worksheet|
	        order_name = worksheet.sheet_name # Name of the worksheet
	        max_order_id = Order.maximum('orderid') || -1 # Highest orderid in the database (or -1 if no orders exist)
	        order_id = max_order_id + 1 # New orderid is one more than the current maximum

	        order = Order.create(orderid: order_id, ordername: order_name)
	    end
	end
end