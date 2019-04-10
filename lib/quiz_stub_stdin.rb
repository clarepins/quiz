class Quiz_1

  def run
    i = 0
    loop do
      i += 1
      puts question(i)
      ans = gets.chomp! # By default this is called on self
      puts answer(i, ans) == true ? 'Spot on!' : 'No way'
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
