class SetInitialOrderId < ActiveRecord::Migration[8.0]
  def up
    execute "UPDATE sqlite_sequence SET seq = 999999 WHERE name = 'orders'"
  end

  def down
    execute "UPDATE sqlite_sequence SET seq = 1 WHERE name = 'orders'"
  end
end
