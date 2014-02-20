class ModelRelationshipsReportsServicesUsers < ActiveRecord::Migration
  def change
    change_table :reports do |t|
      t.belongs_to :user
      t.belongs_to :service
    end
  end
end
