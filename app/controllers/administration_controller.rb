class AdministrationController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_tender, only: [:open_tenders]
  before_action :set_tender_application, only: [:unseal, :tender_application, :award, :comments]

  def index
    @tenders = Tender.all
    @categories = BusinessCategory.all
  end

  def create
    @tender = Tender.create(tender_params)
    if @tender.save!
      redirect_to administration_index_path, notice: 'Tender Created'
    end
  end

  def open_tenders
    @winner = @tender.tender_applications.where(winner: true)
  end

  def unseal
    @tender_application.update(status: true)
    if @tender_application.status == true
      redirect_to tender_application_path(@tender_application.tender, @tender_application)
    end
  end

  def tender_application

  end

  def award
    @tender_application.tender.update(awarded: true)
    @tender_application.update(winner: true )
    if @tender_application.tender.awarded == true
      redirect_to tender_application_path(@tender_application.tender, @tender_application), notice: 'Tender has been awarded'
    end
  end

  def comments
    @tender_application.update(comments: params[:comments])
    redirect_to tender_application_path(@tender_application.tender, @tender_application), notice: 'Tender has been awarded'
  end


  private

  def set_tender
    @tender = Tender.find(params[:id])
  end

  def set_tender_application
    @tender_application = TenderApplication.find(params[:id])
  end

  def tender_params
    params.permit(:name, :ref_no, :pub_date, :deadline, :business_category_id)
  end

end
