# The thing we're collecting! Author, title, text and optional URL
# Maybe image later? 
class Article < ActiveRecord::Base
  require 'open-uri'
  require 'stringio'

  attr_accessible :title, :author, :text, :url
  # An article may be curated by many people
  has_and_belongs_to_many :curators, class_name: "Reader", 
    association_foreign_key: "curator_id"
  has_many :readings
  has_many :readers, through: :readings
  has_many :thoughts, through: :readings
  # Basically, the domain of the article
  has_and_belongs_to_many :sources

  validates_presence_of :title, :author, :text

  # Query the Readability API to parse the URL
  def Article.query_for_text url
    uri = URI.parse("#{ENV['r_query']}#{url}")
    begin
      f = open(uri.to_s)
    rescue OpenURI::HTTPError
      return nil
    end
    # f is either a StringIO or a TempFile
    return f.string if f.is_a? StringIO
    # f is a TempFile!
    f.rewind
    f.read
  end
end
