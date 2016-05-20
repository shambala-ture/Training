class User

  def Full_name
    puts " Your in instance class"
  end
  alias name Full_name
end
User.new.name