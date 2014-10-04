patients = 20.times do
  Patient.create(
    name: Faker::Name.name,
    socsec: Faker::Number.number(9),
    hospital: "#{Faker::Company.name} Hospital"
  )
end

arr = [
  [0, 1, 'Seattle, WA', 'Oct 1, 2014'],
  [1, 2, 'Seattle, WA', 'Oct 2, 2014'],
  [1, 3, 'Seattle, WA', 'Oct 3, 2014'],
  [1, 4, 'Seattle, WA', 'Oct 3, 2014'],
  [1, 5, 'Seattle, WA', 'Oct 3, 2014'],
  [2, 1, 'Seattle, WA', 'Oct 1, 2014'],
  [2, 6, 'Seattle, WA', 'Oct 3, 2014'],
  [2, 7, 'Seattle, WA', 'Oct 7, 2014'],
  [2, 8, 'Seattle, WA', 'Oct 9, 2014'],
  [3, 9 , 'Seattle, WA', 'Oct 10, 2014'],
  [3, 10, 'Seattle, WA', 'Oct 10, 2014'],
  [3, 11, 'Seattle, WA', 'Oct 10, 2014'],
  [4, 12, 'Seattle, WA', 'Oct 15, 2014'],
  [4, 13, 'Seattle, WA', 'Oct 17, 2014'],
  [5, 14, 'Seattle, WA', 'Oct 15, 2014'],
  [6, 15, 'Seattle, WA', 'Oct 21, 2014'],
  [6, 16, 'Seattle, WA', 'Oct 21, 2014'],
  [6, 17, 'Seattle, WA', 'Oct 21, 2014'],
  [7, 18, 'Seattle, WA', 'Oct 10, 2014'],
  [7, 19, 'Seattle, WA', 'Oct 18, 2014']
]

ids = Patient.all.map(&:id)
arr.each do |a|
  Contact.create(
    patient_id: Patient.find(ids[a[0]]).id,
    infected_id: Patient.find(ids[a[1]]).id,
    location: a[2],
    date: a[3])
end
