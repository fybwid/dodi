class OutgoingMail < ApplicationRecord
  enum status: [ :konsep, :koreksi_kasie_1, :revisi_kasie_1, :koreksi_kasie_2, :revisi_kasie_2,
                  :koreksi_ktu_1, :revisi_ktu_1, :koreksi_ktu_2, :revisi_ktu_2, :koreksi_kepala_1,
                  :revisi_kepala_1, :koreksi_kepala_2, :revisi_kepala_2, :fix ]
  
  has_many :comments, :as => :commentable
end
