class DeleteReaders < ActiveRecord::Migration[7.1]
  def change
    drop_table :readers
  end
end
