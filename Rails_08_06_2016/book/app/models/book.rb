class Book < ActiveRecord::Base
   validates :title, :summary, presence: true, length: { minimum: 5 }
end
