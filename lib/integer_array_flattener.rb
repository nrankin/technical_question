
class IntegerArrayFlattener

	def self.flatten(array)
		raise ArgumentError.new("You must supply an array.") unless is_iterable(array) 
		flattened_array = []
		process(array, flattened_array)
	end

	private

	def self.process(element, flattened_array)
		if is_iterable(element) 
			element.each do |e| 
				process(e, flattened_array)
			end
		else
		 flattened_array << element
		end 	

		return flattened_array

	end	

	def self.is_iterable(element)
		return element.respond_to?('each')
	end	

end