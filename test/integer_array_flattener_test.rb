require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/integer_array_flattener'

describe IntegerArrayFlattener do
	it 'returns an array' do
		IntegerArrayFlattener.flatten([1]).must_be_kind_of(Array)
	end

	it 'only accepts arrays' do
		lambda { IntegerArrayFlattener.flatten("john") }.must_raise(ArgumentError)
		lambda { IntegerArrayFlattener.flatten(5) }.must_raise(ArgumentError)
	end

	it 'flattens an array of arbitrarily nested arrays of integers' do
		check_this([[1,2,[3]],4])
	end

	it 'doesnt fail for non-integers' do
		check_this([['a',2,[3,['b','c']]], 4])
	end

	def check_this(array)
		expected_result = array.flatten
		result = IntegerArrayFlattener.flatten(array)
		assert_equal(expected_result, result)
	end	

end