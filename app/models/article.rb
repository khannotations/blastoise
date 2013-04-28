class Article < ActiveRecord::Base
  has_and_belongs_to_many :curators, class_name: "Reader", association_foreign_key: "curator_id"
  has_many :readings
  has_many :readers, through: :readings
  has_many :thoughts, through: :readings
  has_and_belongs_to_many :sources

  attr_accessible :title, :author, :text, :url

end
