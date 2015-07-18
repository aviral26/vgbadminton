class CreateImages < ActiveRecord::Migration
  #def change
   # create_table :images do |t|

    #  t.timestamps null: false
    #end
  #end

  def self.up 
    create_table :images do |t|
      t.column "name", :string 
      t.column "width", :integer 
      t.column "height", :integer 
    end 
  end 
 
  def self.down 
    drop_table :images 
  end 
end
