class CreateSamuraiTasks < ActiveRecord::Migration
def change
create_table :samurai_tasks_tasks do |t| # <- here
t.string :title
t.text :content
t.references :user, index: true
t.references :contact, index: true
t.timestamps null: false
end
add_foreign_key :samurai_tasks_tasks, :samurai_users # <- here
add_foreign_key :samurai_tasks_tasks, :samurai_contacts_contacts # <- here
end
end