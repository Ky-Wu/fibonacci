def fibs(number)
  fibs ||= [0,1]
  counter = 1
  until counter >= number
    counter += 1
    fibs[counter] = fibs[(counter - 1)] + fibs[(counter - 2)]
  end
  puts fibs[0...number]
end

def fibs_rec(number, result = [0,1])
  return result[0...number] if result.length >= number
  result << result[-1] + result[-2]
  return fibs_rec(number, result)
end
