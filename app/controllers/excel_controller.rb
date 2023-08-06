class ExcelController < ApplicationController
  def import
    ExcelImport.read_excel_file
    flash[:notice] = "Database updated successfully from Excel file!"
    redirect_to root_path
  end
end