class CreateOutgoingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :outgoing_mails do |t|
      t.string :title
      t.string :description
      t.references :section, index: true #Link to section
      t.references :user, index: true #Link to user who create it
      t.references :role, index: true #Link to role
      t.references :status, index: true #Link to status

      t.timestamps
    end
  end
end
