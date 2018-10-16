class StaticPagesController < ApplicationController
	def home
	end

	def advisers
	end

	def services
		@full_title = "Complete Service Package"
		@assessment_title = "Advanced Assessment of Credentials"
		@mcat_title = "MCAT Strategies"
		@amcas_title = "AMCAS Application"
		@essays_title = "Secondary Essays"
		@interviews_title = "Interview Preparation"
		@school_title = "Final Selection of Medical School"
		@skills_title = "Learning Skills and Strategies"
	end
end
