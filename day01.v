import os { read_file }
import arrays { sum, max }

fn main() {
	inputs := os.read_file('Day01.txt')!
	data := process_data(inputs)!

	println(max(data)!)
	println(sum(data[0..3])!)
}

fn process_data(data string) ![]int {
	mut result := data.replace('\r\n', '\n')
		.split('\n\n')
		.map(sum(it.split('\n').map(it.int()))!)
	result.sort(b < a)
	return result
}
