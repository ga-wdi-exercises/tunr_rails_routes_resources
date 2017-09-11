class AddTimestampsToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :created_at, :datetime
    add_column :artists, :updated_at, :datetime
  end
end
