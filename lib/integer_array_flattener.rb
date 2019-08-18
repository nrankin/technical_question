
class IntegerArrayFlattener

	def self.flatten(array)
		raise ArgumentError.new("You must supply an array.") unless array.is_a?(Array) 
		return []
	end

end