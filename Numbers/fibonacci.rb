#!/usr/bin/env ruby

def fibonacci_iterative(n)
	counter = 0
	previous = 0
	current = 1
	while counter < n
		puts current
		tmp = previous
		previous = current
		current = tmp + current
		counter += 1
	end
end

def fibonacci_recursive(n)
	fibonacci(0, 1, n)
end

def fibonacci(previous, current, counter)
	if counter != 0 
		puts current
		fibonacci(current, previous + current, counter - 1)
	end
end

def main
	while true do
		print "Enter a number N, and we will generate the first N terms of the Fibonacci sequence: "
		n = gets.chomp.to_i
		if n > 0
			break
		else
			puts "Please enter N > 0."
		end
	end

	start = Time.now
	fibonacci_recursive(n)
	finish = Time.now
	# puts f
	puts "Finished in #{finish - start} seconds."

end

main