def to_camel_case(str, first_lower_case = false)

  text = str.gsub(/_|,|-/, ' ').split(" ")
  first_word = first_lower_case ? text.shift.downcase : text.shift
  first_word + text.collect!(&:capitalize).join

end

#Test cases

p to_camel_case("the-stealth-warrior")
p to_camel_case("The_Stealth_Warrior")
p to_camel_case("_The_Stealth_warrior")
p to_camel_case("-The stealth Warrior",true)
p to_camel_case("he_alth-barrior,BsKF", true)
