class ExcelImport
	def self.read_excel_file
		workbook = RubyXL::Parser.parse("./import/database.xlsx")
		workbook.worksheets.each do |worksheet|
	        order_name = worksheet.sheet_name
	        max_order_id = Order.maximum('orderid') || -1
	        order_id = max_order_id + 1

	        puts "orderid : #{order_id} | order_name = #{order_name}"
	        order = Order.create(orderid: order_id, odername: order_name)
		end
	end
end