class IncomingMail < ApplicationRecord
  has_many :comments, :as => :commentable
end
