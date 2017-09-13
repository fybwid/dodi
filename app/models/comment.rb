class Comment < ApplicationRecord
  belongs_to :outgoing_mail, :incoming_mail
end
