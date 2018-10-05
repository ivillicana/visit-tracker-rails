module PersonHelper
  def person_address(person)
    person.house_number ? (house_number = person.house_number) : (house_number = " ")
    person.street ? (street = person.street) : (street = " ")
    person.apt ? (apt = person.apt) : (apt = " ")
    person.city ? (city = "#{person.city},") : (city = " ")
    person.state ? (state = person.state) : (state = " ")
    person.country ? (country = person.country) : (country = " ")
    raw("#{house_number} #{street}</br>Apt/Floor: #{apt}</br>#{city} #{state} #{country}")
  end
end
