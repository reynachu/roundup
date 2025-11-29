class CreateInvitations < ActiveRecord::Migration[7.1]
  def change
    create_table :invitations do |t|
      t.references :inviter, null: false, foreign_key: true
      t.references :invitee, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :location
      t.string :photo_url

      t.timestamps
    end
  end
end
