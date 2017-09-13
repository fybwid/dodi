class OutgoingMail < ApplicationRecord
  has_many :comments, :as => :commentable
end
