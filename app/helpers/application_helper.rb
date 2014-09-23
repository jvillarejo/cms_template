module ApplicationHelper
	include TwitterBootstrapHelper
	
	def current_path
		request.path
	end

	def home?
		current_path == root_path
	end

	def header(text)
		content_for(:header) { render 'shared/header', text: text, resource: @resource }
		content_for(:title) { text }
	end

	def title
		prefix = content_for?(:title) ? "#{content_for(:title)} | " : ''
		
		prefix + "Webapp"
	end

end
