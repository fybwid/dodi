json.extract! incoming_mail_commenter, :id, :commenter, :body, :created_at, :updated_at
json.url incoming_mail_commenter_url(incoming_mail_commenter, format: :json)
