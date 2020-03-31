class AddConfigurePermittedParametersToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :configure_permitted_parameters, :datetime
  end
end
