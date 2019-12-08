module Result
  extend ActiveSupport::Concern

  def somethingfoo(x)
    puts "Ayyyy! Foo"
    puts x[:Q0]
    #y = x[:0]
  end

  def catPersonality(responses)
    puts "catPersonality"
    puts responses[:Q1]

    case responses[:Q0]
      when "female"
        a0 = [1, 0, 0, 1, 0 ,0 ,0 , 0, 1, 0, 0, 0]
      when "male"
        a0 = [0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
      else
        a0 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q1]
    when "a"
      a1 = [1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0]
    when "b"
      a1 = [0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0]
    when "c"
      a1 = [0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]
    when "d"
      a1 = [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1]
    else
      a1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q2]
    when "a"
      a2 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    when "b"
      a2 = [0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1]
    when "c"
      a2 = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
    when "d"
      a2 = [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]
    else
      a2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q3]
    when "a"
      a3 = [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    when "b"
      a3 = [0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0]
    when "c"
      a3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1]
    when "d"
      a3 = [0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0]
    else
      a3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q4]
    when "a"
      a4 = [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]
    when "b"
      a4 = [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]
    when "c"
      a4 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1]
    when "d"
      a4 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]
    when "e"
      a4 = [0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0]
    else
      a4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q5]
    when "a"
      a5 = [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
    when "b"
      a5 = [0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
    when "c"
      a5 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]
    when "d"
      a5 = [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]
    else
      a5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q6]
      when "a"
        a6 = [0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0]
      when "b"
        a6 = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1]
      when "c"
        a6 = [0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
      when "d"
        a6 = [1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0]
      else
        a6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q7]
    when "a"
      a7 = [0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0]
    when "b"
      a7 = [1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0]
    when "c"
      a7 = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
    when "d"
      a7 = [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1]
    when "e"
      a7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    else
      a7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q8]
    when "a"
      a8 = [0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0]
    when "b"
      a8 = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    when "c"
      a8 = [0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0]
    when "d"
      a8 = [0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0]
    when "e"
      a8 = [0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
    else
      a8 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end

    case responses[:Q9]
    when "a"
      a9 = [0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]
    when "b"
      a9 = [0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0]
    when "c"
      a9 = [0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0]
    when "d"
      a9 = [1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]
    else
      a9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end


    arraySum = []
    arrayAdd(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, arraySum)
    print arraySum


    max = arraySum.max
    puts "max"
    puts max

    index = arraySum.index(max)
    puts "index"
    puts index



    return index
  end



  def arrayAdd(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, d)
    for i in 0..11
      e = a0[i] + a1[i] + a2[i] + a3[i] + a4[i] + a5[i]+ a6[i] + a7[i] + a8[i] + a9[i]
      d.push(e)
    end
  return d
  end
end
