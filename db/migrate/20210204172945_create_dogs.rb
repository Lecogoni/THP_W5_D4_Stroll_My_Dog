class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name

    end
  end
end
