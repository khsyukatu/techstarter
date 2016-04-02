if User.all.count == 0
  User.seed_once do |s|
    s.email = "higuchi@unistyleinc.com"
    s.password = "unistyle1101"
    s.name = "algolabo"
  end
end
Role.seed_once do |s|
  s.name = "techstarterteam"
  s.user_id = 1
end