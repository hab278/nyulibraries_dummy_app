class CreateBobcats < ActiveRecord::Migration
  def change
    create_table :bobcats do |t|

      t.timestamps
    end
  end
end
