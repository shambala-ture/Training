class Article < ActiveRecord::Base
  # validates :title, presence: true, length: { minimum: 5 }
   has_many :comments, dependent: :destroy

# method: 1  

  validates :title, :text, presence: true, length: { minimum: 5 }
  before_validation :ensure_login_has_a_value
  protected
    def ensure_login_has_a_value
      if title.nil?
        self.title = text unless text.blank?
      end
    end

# method: 2

  #   before_create do
  #   self.title = title.capitalize if title.blank?
  # end

# method: 3

  # before_validation :normalize_name, on: :create
  # # :on takes an array as well
  # after_validation :set_text, on: [ :create, :update ]
  # protected
  #   def normalize_name
  #     self.title = self.title.downcase.titleize
  #   end
 
  #   def set_text
  #     self.text = TextService.query(self)
  #   end

end
