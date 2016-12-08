["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
}])
