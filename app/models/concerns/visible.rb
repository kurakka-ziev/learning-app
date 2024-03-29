module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

	def archived?
		status == 'archived'
	end

	class_methods do 
		def arch_count
			where(status: 'archived').count
		end

		def pub_count
			where(status: 'public').count
		end

		def prvt_count
			where(status: 'private').count
		end

		def all_count
			arts = Article.all
			arts.count
		end
	end
end
