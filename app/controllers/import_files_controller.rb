class ImportFilesController < ApplicationController

  def new
    @gross_revenue = CalculateGrossRevenueService.call
  end

  def create
    if params[:file_import].present?
      store_service = StoreRecordsService.new(params[:file_import][:file].path)
      store_service.call
    end
    redirect_to new_import_file_url
  end
end
