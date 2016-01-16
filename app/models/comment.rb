class Comment < ActiveRecord::Base
  validates_presence_of :author, :body, :email
  belongs_to :post

end
