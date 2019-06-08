require 'quiz_inject'

describe Quiz_2 do

  it 'user calls run to loop through questions' do
    # require 'pry'
    # binding.pry
    input = double(:input)
    allow(input).to receive(:gets).and_return("a\n", "a\n")

    output = "Where is Makers Academy situated? a) London b) New York
Correct!
Where is Big Ben situated? a) New York b) London c) Alaska
Incorrect\n"

    expect { subject.run(input) }.to output(output).to_stdout
  end
end
