module UsersHelper
  def self.guest
    find_or_create_by!(email:"guest@gmail.com") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end