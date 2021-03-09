class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :acc
      t.references :community
      t.timestamp

    end
  end
end
