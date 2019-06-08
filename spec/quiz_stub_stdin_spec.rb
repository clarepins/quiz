require 'quiz_stub_stdin'

describe Quiz_1 do

  it 'user calls run to loop through questions' do
    # require 'pry'
    # binding.pry
    output = "Where is Makers Academy situated? a) London b) New York
Spot on!
Where is Big Ben situated? a) New York b) London c) Alaska
No way\n"
    allow(subject).to receive(:gets).and_return("a\n", "a\n")
    # could also call this on STDIN if you call gets on STDIN in source code.
    expect { subject.run }.to output(output).to_stdout
  end
end
