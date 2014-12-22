class Array

  def matt_inject(memo = self[0], var = nil, &block)
    copy = self.dup 
    block = var.to_proc if var.is_a?(Symbol)
    block = memo.to_proc if memo.is_a?(Symbol)
    memo = self[0] if memo.is_a?(Symbol)
    copy.shift if memo == self[0]
    copy.each do |num|
      memo = block.call(memo, num)
    end
    memo
  end
end



