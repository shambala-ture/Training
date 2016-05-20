def math
  lambda{ return 'return from lambda' }.call
  return "return from method"
end
puts math