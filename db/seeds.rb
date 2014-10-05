patients = 20.times do
  Patient.create(
    name: Faker::Name.name,
    socsec: Faker::Number.number(9),
    hospital: "#{Faker::Company.name} Hospital"
  )
end

arr = [
  [0, 1, 'Seattle, WA',  '{ 2014, 10, 1 }'],
  [1, 2, 'Seattle, WA',  '{ 2014, 10, 2 }'],
  [1, 3, 'Seattle, WA',  '{ 2014, 10, 3 }'],
  [1, 4, 'Seattle, WA',  '{ 2014, 10, 3 }'],
  [1, 5, 'Seattle, WA',  '{ 2014, 10, 3 }'],
  [2, 6, 'Seattle, WA',  '{ 2014, 10, 3 }'],
  [2, 7, 'Seattle, WA',  '{ 2014, 10, 7 }'],
  [2, 8, 'Seattle, WA',  '{ 2014, 10, 9 }'],
  [3, 9 , 'Seattle, WA', '{ 2014, 10, 10 }'],
  [3, 10, 'Seattle, WA', '{ 2014, 10, 10 }'],
  [3, 11, 'Seattle, WA', '{ 2014, 10, 10 }'],
  [4, 12, 'Seattle, WA', '{ 2014, 10, 15 }'],
  [4, 13, 'Seattle, WA', '{ 2014, 10, 17 }'],
  [5, 14, 'Seattle, WA', '{ 2014, 10, 15 }'],
  [6, 15, 'Seattle, WA', '{ 2014, 10, 21 }'],
  [6, 16, 'Seattle, WA', '{ 2014, 10, 21 }'],
  [6, 17, 'Seattle, WA', '{ 2014, 10, 21 }'],
  [7, 18, 'Seattle, WA', '{ 2014, 10, 10 }'],
  [7, 19, 'Seattle, WA', '{ 2014, 10, 18 }']
]

ids = Patient.all.map(&:id)
arr.each do |a|
  Transmission.create(
    patient_id: Patient.find(ids[a[0]]).id,
    infected_id: Patient.find(ids[a[1]]).id,
    location: a[2],
    date: Date.strptime(a[3], "{ %Y, %m, %d }"))
end
