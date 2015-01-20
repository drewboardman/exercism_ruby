require "spec_helper"

RESPONSES = {
  'Tom-ay-to, tom-aaaah-to.' => 'Whatever.',
  'WATCH OUT!' => 'Whoa, chill out!',
  ('A'..'Z').to_a.shuffle[0, 10].join => 'Whoa, chill out!',
  'Does this cryogenic chamber make me look fat?' => 'Sure.',
  'You are, what, like 15?' => 'Sure.',
  ('a'..'z').to_a.shuffle[0, 10].join << '?' => 'Sure.',
  "Let's go make out behind the gym!" => 'Whatever.',
  "It's OK if you don't want to go to the DMV." => 'Whatever.',
  'WHAT THE HELL WERE YOU THINKING?' => 'Whoa, chill out!',
  '1, 2, 3 GO!' => 'Whoa, chill out!',
  '1, 2, 3' => 'Whatever.',
  '4?' => 'Sure.',
  'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!' => 'Whoa, chill out!',
  'I HATE YOU' => 'Whoa, chill out!',
  'Ending with ? means a question.' => 'Whatever.',
  'Wait! Hang on. Are you going to be OK?' => 'Sure.',
  '' => 'Fine. Be that way!',
  ' ' * rand(1..10) => 'Fine. Be that way!',
  "\t" * rand(1..10) => 'Fine. Be that way!',
  %(
Does this cryogenic chamber make me look fat?
no) => 'Whatever.'

}

describe "Bob" do
  context '#hey' do
    RESPONSES.each do |remark, response|
    	it "returns #{response} when given #{remark}" do
	      expect(Bob.new(remark).hey).to eq(response)
	    end
    end
  end
end