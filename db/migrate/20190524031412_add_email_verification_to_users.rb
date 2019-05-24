class AddEmailVerificationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email_verification_token, :string
    add_column :users, :email_verified, :boolean, default: false
  end
end
