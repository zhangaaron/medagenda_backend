# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


patients = [Patient.create(firstname: 'Eric', lastname: 'Paulos', dob: Time.new('1969-04-01'), room:'160'),
            Patient.create(firstname: 'Wanda', lastname: 'Dirks', dob: Time.new('1994-11-27'), room: '107'),
            Patient.create(firstname: 'Jeffrey', lastname: 'Hu', dob: Time.new('1991-11-11'), room: '69'),
            Patient.create(firstname: 'Derrick', lastname: 'Tan', dob: Time.new('1999-10-31'), room: '420')]
task_deets = ['Check temperature', 'Administer suppository', 'tell bedtime story',
              'give a strong high five', 'dunk on in bball']

status_deets = ['burning love for ux', 'strep throat', 'cowbell deficiency',
                'extreme constipation', 'suffers from lack of hopz',
                'literally your mom']
patients.each do |patient|
  3.times do |enumerator|  # randomly generate some tasks and status from preset list with fixed times due based on system time
    patient.tasks.build(details: task_deets.sample, time_due: Time.now - enumerator.hours)
    patient.status.build(details: status_deets.sample, time_expire: Time.now + enumerator.days)
  end
  patient.save
end