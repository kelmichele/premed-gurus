class ConsultationsController < ApplicationController
	def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)

    if @consultation.valid? && @consultation.save
      ConsultationMailer.new_consultation(@consultation).deliver unless consultation_params[:honey].present?
      redirect_to consultation_path, notice: "Your message has been sent. We will contact you within 2 business days of receiving your submission to schedule your consult."
    else
      # flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private
    def consultation_params
      params.require(:consultation).permit(:name, :address, :phone, :email, :college, :major, :school_year, :graduation, :target, :attempts, :content, :honey)
    end
end
