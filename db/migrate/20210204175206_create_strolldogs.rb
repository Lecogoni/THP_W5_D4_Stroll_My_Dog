class CreateStrolldogs < ActiveRecord::Migration[6.0]
  def change
    create_table :strolldogs do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :stroll, index: true

    end
  end
end
