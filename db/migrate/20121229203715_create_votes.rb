class CreateVotes < ActiveRecord::Migration
  
  def change
  	create_table :votes do |t|
  		t.integer :post_id
  		t.string :price
  		
  		t.timestamps
  	end		
  end

end
