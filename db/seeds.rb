# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


patients = [Patient.create(firstname: 'Roger', lastname: 'Rabbit', dob: Time.new('1969-04-01'), room:'160'),
            Patient.create(firstname: 'Wanda', lastname: 'Walinsky', dob: Time.new('1994-11-27'), room: '107'),
            Patient.create(firstname: 'Jeffrey', lastname: 'Jetski', dob: Time.new('1991-11-11'), room: '69'),
            Patient.create(firstname: 'Derrick', lastname: 'Dormer', dob: Time.new('1999-10-31'), room: '420'),
            Patient.create(firstname: 'Jon', lastname: 'Snow', dob: Time.new('1994-11-11'), room: '1')]
task_deets = ['chart vital signs', 'assess patient health', 'provide incontinent care', 'wound care',
            'give medication', 'give medication', 'clean and bandage wound', 'ultrasound', 'take blood pressure',
            'blood tranfusion']

status_deets = ['ventilated airway', 'chest pains', 'hemophilia', 'on blood thinners', 'can\'t eat', 'high blood pressure',
              'strep throat', 'catheter', 'keep upright']
patients.each do |patient|
  3.times do |enumerator|  # randomly generate some tasks and status from preset list with fixed times due based on system time
    patient.tasks.build(details: task_deets.sample, time_due: Time.now - enumerator.hours)
    patient.status.build(details: status_deets.sample, time_expire: Time.now + enumerator.days)
  end
  patient.save
end