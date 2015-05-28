questions = {q1: ["true && true", true && true],
             q2: ["false && true", false && true],
             q3: ["1 == 1 && 2 == 1", 1 == 1 && 2 == 1],
             q4: ['"test" == "test"', "test" == "test"],
             q5: ["1 == 1 || 2 != 1", 1 == 1 || 2 != 1],
             q6: ["true && 1 == 1", true && 1 == 1],
             q7: ["false && 0 != 0", false && 0 != 0],
             q8: ["true || 1 == 1", true || 1 == 1],
             q9: ['"test" == "testing"', "test" == "testing"],
             q10: ["1 != 0 && 2 == 1", 1 != 0 && 2 == 1],
             q11: ['"test" != "testing"', "test" != "testing"],
             q12: ['"test" == 1', "test" == 1],
             q13: ["!(true && false)", !(true && false)],
             q14: ["!(1 == 1 && 0 != 1)", !(1 == 1 && 0 != 1)],
             q15: ["!(10 == 1 || 1000 == 1000)", !(10 == 1 || 1000 == 1000)],
             q16: ["!(1 != 10 || 3 == 4)", !(1 != 10 || 3 == 4)],
             q17: ['!("testing" == "testing" && "Zed" == "Cool Guy")', !("testing" == "testing" && "Zed" == "Cool Guy")],
             q18: ['1 == 1 && (!("testing" == 1 || 1 == 0))', 1 == 1 && (!("testing" == 1 || 1 == 0))],
             q19: ['"chunky" == "bacon" && (!(3 == 4 || 3 == 3))', "chunky" == "bacon" && (!(3 == 4 || 3 == 3))],
             q20: ['3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))', 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))]
}

def eval(question, answer)
  if question == answer
    return "correct"
  else
    return "incorrect"
  end
end

def question(questions)
  qx = 0
  questions.values.each do |value|
    value.each do |question|
      puts "Evaluate if true: #{question}" if question.is_a?(String)

      if question.is_a?(TrueClass) || question.is_a?(FalseClass)
        qx = question.to_s
      end
    end
      answer = gets.chomp.downcase
      if answer == 'exit'
        break
      else
        puts "You said #{answer}. That is #{eval(qx, answer)}"
      puts
      end
  end
end

question(questions)
