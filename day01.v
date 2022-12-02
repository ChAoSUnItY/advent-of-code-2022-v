import os { read_file }
import arrays { max, sum }

fn main() {
	inputs := read_file('Day01.txt')!
	data := process_data(inputs)!

	println(part1(data)!)
	println(part2(data)!)
}

fn part1() !int {
	return max(data)!
}

fn part2() !int {
	return sum(data[0..3])!
}

fn process_data(data string) ![]int {
	mut result := data.replace('\r\n', '\n')
		.split('\n\n')
		.map(sum(it.split('\n').map(it.int()))!)
	result.sort(b < a)
	return result
}
