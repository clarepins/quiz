class Quiz_2

  def run(input = STDIN)
    i = 0
    loop do
      i += 1
      puts question(i)
      ans = input.gets.chomp!
      puts answer(i, ans) == true ? 'Correct!' : 'Incorrect'
      break if i == 2
    end
  end

  private

  def question(num)
    return 'Where is Makers Academy situated? a) London b) New York' if num == 1
    return 'Where is Big Ben situated? a) New York b) London c) Alaska' if num == 2
  end

  def answer(num, choice)
    return true if num == 1 && choice == 'a'
    return true if num == 2 && choice == 'b'
  end
end
