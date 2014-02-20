class ContactsServicesRelationship < ActiveRecord::Migration
  def change
    create_table :contacts_services, :id => false do |t|
      t.references :contact, :null => false
      t.references :service, :null => false
    end

    add_index(:contacts_services, [:contact_id, :service_id], :unique => true)
  end
end
