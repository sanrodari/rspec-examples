class FirstScheme < ActiveRecord::Migration

  def change
	create_table :users do |t|
		t.string :name
		t.string :lastname
		
		t.references :office
	end
	
	create_table :offices do |t|
		t.string :name
	end
  end
  
end
