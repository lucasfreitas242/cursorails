class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :nome, null: false, default: ''
      t.string :password_digest, null: false, default: ''

      t.timestamps
    end
  end
end
