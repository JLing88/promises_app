class AddPromisetoPromise < ActiveRecord::Migration[5.2]
  def change
    add_column :promises, :promise, :string
  end
end
