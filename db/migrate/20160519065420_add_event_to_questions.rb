class AddEventToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :event, :string
  end
end
