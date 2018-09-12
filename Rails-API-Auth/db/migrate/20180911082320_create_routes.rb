class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.integer :service_id
      t.string :verb
      t.string :url_pattern
      t.string :version

      t.timestamps
    end
  end
end
