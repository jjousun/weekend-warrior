# my solution
# def leap_year? year
#   if year % 100 == 0 && year % 400 == 0
#     return true
#   elsif year % 100 == 0
#     return false
#   elsif year % 4 == 0
#     return true
#   end
# end


# below are the same written in 2 ways
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      return false
    end
    return true
  end
  false
end

# def leap_year?(year)
#   (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
# end
