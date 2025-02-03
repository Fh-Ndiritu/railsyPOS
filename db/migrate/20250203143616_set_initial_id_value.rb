class SetInitialIdValue < ActiveRecord::Migration[6.1]
  def up
    execute "UPDATE sqlite_sequence SET seq = 999999999 WHERE name = 'products'"
  end

  def down
    execute "UPDATE sqlite_sequence SET seq = 1 WHERE name = 'products'"
  end
end
