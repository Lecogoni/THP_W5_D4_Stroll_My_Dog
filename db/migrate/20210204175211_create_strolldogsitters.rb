class CreateStrolldogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :strolldogsitters do |t|

      t.belongs_to :dogsitter, index: true
      t.belongs_to :stroll, index: true
    end
  end
end
