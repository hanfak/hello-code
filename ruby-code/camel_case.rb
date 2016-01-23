def to_camel_case(str, change_first_word = false)

  text = str.gsub(/_|,|-/, ' ').split(" ")
  first_word = chang_first_word ? text.shift.downcase : text.shift
  first_word + text.collect!(&:capitalize).join

end


