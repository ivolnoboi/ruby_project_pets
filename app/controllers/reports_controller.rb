class ReportsController < ApplicationController
  def index
  @rp = Report.joins(:report_type).where("name = 'сбор пожертвований'")
  @rp2 = Report.joins(:report_type).where("name = 'отчёт о питомцах'")
    end
end
