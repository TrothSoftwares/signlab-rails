if !User.any?
  User.create(email: 'test@test.com', password: 'password')
end
