class Reading < ActiveRecord::Base
  belongs_to :reader
  belongs_to :article
  has_many :thoughts
  
end
