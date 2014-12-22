class Array

  def matt_inject(memo = self[0], &block)
    block = memo.to_proc if !block || memo.is_a?(Symbol)
    copy = self.dup
    memo = self[0] if memo.is_a?(Symbol)
    copy.shift if memo == self[0]
    puts "memo before loop #{memo}"
    copy.each do |num|
      puts "num before loop #{num}"
      memo = block.call(memo, num)
      puts "memo after loop #{memo}"
    end
    memo
  end
end



