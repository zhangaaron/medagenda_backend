json.array!(@patients) do |patient|
  json.extract! patient, :id, :lastname, :room, :dob, :tasks, :status
  json.url patient_url(patient, format: :json)
end
