class ReportController < ApplicationController
  def index

    @ismreports = IsmReport.order(:published_at => 'DESC')
    @indices = Index.all
    @index_reports = IndexReport.all
  end

  def new
  end

  def create
  end

  def delete
  end

  def destroy
  end
end
