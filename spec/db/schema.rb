ActiveRecord::Schema.define(:version => 0) do
  create_table :users, :force => true do |t|
    t.column :login, :string
  end
  
  create_table :posts, :force => true do |t|
    t.column :user_id, :integer
    t.column :title, :string
  end
end
