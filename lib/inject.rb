class Array

  def matt_inject(memo = self[0])
    copy = self.dup
    copy.shift if memo == self[0]
    puts "memo before loop #{memo}"
    copy.each do |num|
      puts "num before loop #{num}"
      memo = yield(memo, num)
      puts "memo after loop #{memo}"
    end
    memo
  end
end