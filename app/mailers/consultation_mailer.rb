class ConsultationMailer < ApplicationMailer
	default from: "Website Consultation Request Form <noreply@premedgurus.com>"
	default subject: "Consultation Request from Website"

	def new_consultation(consultation)
	  @consultation = consultation

	  mail subject: "Consultation Request from Website"
	  mail to: "kelli@hsdesignhouse.com"
	end
end
