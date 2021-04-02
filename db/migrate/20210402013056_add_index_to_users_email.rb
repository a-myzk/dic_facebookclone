class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    before_validation { email.downcase! }
  end
end
