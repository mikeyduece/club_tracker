# Club seeds
puts 'Creating Clubs'
wood = (1..5).to_a
hybrid_resuce = [3,4]
driving_iron = [1,2]
iron = (3..9).to_a
wedges = %w[P A 52\ Degree]
sand_wedge = %w[54\ Degree 56\ Degree 58\ Degree 60\ Degree]

def club_type(c_type)
  Club.club_types[c_type]
end

puts 'Creating Woods'
wood.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:wood)) }

puts 'Creating Hybrids'
hybrid_resuce.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:hybrid_resuce)) }

puts 'Creating Driving Irons'
driving_iron.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:driving_iron)) }

puts 'Creating Irons'
iron.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:iron)) }

puts 'Creating Wedges'
wedges.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:wedge)) }

puts 'Creating Sand Wedges'
sand_wedge.each { |w| Club.find_or_create_by(number: w, club_type: club_type(:sand_wedge)) }
