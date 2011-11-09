class Author < ActiveRecord::Base
  has_many :books

  def name
    "#{first_name} #{last_name}"
  end
end
