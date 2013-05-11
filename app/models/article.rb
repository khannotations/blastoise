class Article < ActiveRecord::Base
  require 'open-uri'

  has_and_belongs_to_many :curators, class_name: "Reader", association_foreign_key: "curator_id"
  has_many :readings
  has_many :readers, through: :readings
  has_many :thoughts, through: :readings
  has_and_belongs_to_many :sources

  attr_accessible :title, :author, :text, :url

  def Article.query_for_text url
    uri = URI.parse("#{ENV['r_query']}#{url}")
    f = open(uri.to_s)
    # f is either a StringIO or a TempFile
    begin 
      return f.string # f is a StringIO
    rescue NoMethodError => e
      p e
      f.rewind
      f.read
    end
  end
end
