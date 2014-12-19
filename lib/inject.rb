class Array

  def matt_inject
    copy = self.dup

    memo = self[0]
    copy.shift
    puts "memo before loop #{memo}"
    copy.each do |num|
      puts "num before loop #{num}"
      memo = yield(memo, num)
      puts "memo after loop #{memo}"
    end
    memo
  end
end