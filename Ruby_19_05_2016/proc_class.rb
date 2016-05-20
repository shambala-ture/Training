def math
  Proc.new { return 'return from proc' }.call
  return "return from method"
end
puts math