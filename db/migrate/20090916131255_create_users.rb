class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.openid_authenticatable
      t.recoverable
      t.rememberable
      t.trackable
      t.lockable
      t.timestamps
    end
    
    add_index :users, :identity_url, :unique => true
  end

  def self.down
    drop_table :users
  end
end
