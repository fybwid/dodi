class IncomingMail < ApplicationRecord
  enum status: [ :konsep, :koreksi_kasie_1, :revisi_kasie_1 ]
  
  has_many :comments, :as => :commentable
end
