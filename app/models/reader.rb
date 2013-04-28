class Reader < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password

  has_many :readings
  has_and_belongs_to_many :articles, foreign_key: "curator_id"
  has_many :read_articles, through: :readings, class_name: "Article"
  has_many :thoughts, through: :articles

  validates_presence_of :email
  validates_presence_of :password, :on => :create
  validates_uniqueness_of :email

  # Instance methods

  def curated_articles
    curator ? articles : []
  end

  # Class methods

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end
end
