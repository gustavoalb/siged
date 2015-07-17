module FindOrCreateBy
	extend ActiveSupport::Concern
	module ClassMethods
		def find_or_create_by(attributes, &block)
			find_by(attributes) || create(attributes, &block)
		end
	end
end

ActiveRecord::Base.send(:include, FindOrCreateBy)