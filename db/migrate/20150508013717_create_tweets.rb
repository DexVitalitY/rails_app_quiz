class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    		t.string :content
    		t.string :author_name
      t.timestamps null: false
    end
  end
end
