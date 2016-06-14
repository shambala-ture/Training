class Homepage < ActiveRecord::Base
 validates :name, :message, presence: true, length: { minimum: 5 }
  before_validation :ensure_login_has_a_value
  protected
    def ensure_login_has_a_value
      if name.nil?
        self.name = message unless message.blank?
      end
    end

end
