class CreateOutgoingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :outgoing_mails do |t|

      t.timestamps
    end
  end
end
