ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :deleted_at, :password, :gender
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :deleted_at, :password_digest, :image, :career_year, :admin, :age, :birthday, :gender, :area, :job_hunting, :hobby, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :deleted_at
      f.input :gender
      if f.object.new_record?
        f.input :password, as: :password
        f.input :password_confirmation, :label => "Password Confirmation"
      end
    end
    f.actions
  end
end
