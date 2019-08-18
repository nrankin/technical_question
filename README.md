To flatten an array, navigate to the lib dir and run irb with the file as an option:

	`irb -r ./array_flattener.rb`

Then create your array and pass it to the flattener:

	```
	arr = [[1,2,[3]],4]`
	ArrayFlattener.flatten(arr)
	```

To run the tests, navigate to the test dir and run:
	
	`ruby array_flattener_test.rb`
