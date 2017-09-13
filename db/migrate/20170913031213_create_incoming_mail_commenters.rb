class CreateIncomingMailCommenters < ActiveRecord::Migration[5.1]
  def change
    create_table :incoming_mail_commenters do |t|
      t.string :commenter
      t.text :body

      t.timestamps
    end
  end
end
