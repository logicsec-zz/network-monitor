user = User.new(
      :fullname              => "Nicholas Knight",
      :email                 => "admin@site.local",
      :password              => "password",
      :password_confirmation => "password"
  )
  user.save!
