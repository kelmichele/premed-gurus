class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
  		t.string :name
  		t.string :address
  		t.string :phone
  		t.string :email
  		t.string :college
  		t.string :major
  		t.string :school_year
  		t.string :graduation
  	  t.string :target
  		t.string :attempts
  	  t.string :honey
  		t.string :content
  	  t.timestamps
    end
  end
end
