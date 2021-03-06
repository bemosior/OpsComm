ActiveAdmin.register Service do

  controller do
    def permitted_params
      params.permit!
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Services" do
      f.input :name
    end
    f.inputs "Contacts" do
      f.input :contact, collection: Contact.order('name ASC'), input_html: {size: 15}
    end
    f.actions
  end

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
