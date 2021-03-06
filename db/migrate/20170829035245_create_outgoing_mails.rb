class CreateOutgoingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :outgoing_mails do |t|
      t.string :title
      t.string :description
      t.column :status, :integer, default: 0

      t.timestamps
    end
  end
end
