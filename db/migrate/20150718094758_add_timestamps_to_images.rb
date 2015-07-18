class AddTimestampsToImages < ActiveRecord::Migration
  def change
    add_column :images, :timestamps, :datetime
  end
end
