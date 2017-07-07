def foo(&block)
  block.call "hello" if block_given?
end
