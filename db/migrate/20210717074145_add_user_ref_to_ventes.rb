class AddUserRefToVentes < ActiveRecord::Migration[5.2]
  def change
    add_reference :ventes, :user, foreign_key: true
  end
end
