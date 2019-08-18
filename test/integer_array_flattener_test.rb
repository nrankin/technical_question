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

end