require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/integer_array_flattener'

describe IntegerArrayFlattener do
	it 'returns an array' do
		integer_array = [1]
		result = IntegerArrayFlattener.flatten(integer_array)
		result.must_be_kind_of(Array)
	end

	it 'only accepts arrays' do
		lambda { IntegerArrayFlattener.flatten("john") }.must_raise(ArgumentError)
		lambda { IntegerArrayFlattener.flatten(5) }.must_raise(ArgumentError)
	end

	it 'flattens an array of arbitrarily nested arrays of integers' do
		arr = [[1,2,[3]],4]
		result = IntegerArrayFlattener.flatten(arr)
		assert_equal(arr.flatten, result)
	end

end