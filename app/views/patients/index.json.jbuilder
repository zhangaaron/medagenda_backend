json.array!(@patients) do |patient|
  json.extract! patient, :id, :firstname, :lastname, :room, :dob, :tasks, :status
end
