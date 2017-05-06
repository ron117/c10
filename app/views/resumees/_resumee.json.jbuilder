json.extract! resumee, :id, :name, :email, :dob, :address, :phone, :gender, :qualification, :experience, :projects, :hobbies, :known_programming_languages, :created_at, :updated_at
json.url resumee_url(resumee, format: :json)
