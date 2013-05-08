module ApplicationHelper
end


def flash_type(type)
	case type
	when :notice
		"alert-success"
	when :alert
		"alert-error"
	else
		""
	end
		
end