class Document
  include Mongoid::Document
  field :title, :type => String
  field :author, :type => String
  field :date, :type => Date
  field :body, :type => String
  field :category, :type=> String 
  ARTICLE_CATEGORY = ["FX","Stocks","bonds"]
  validates :title, :author, :body, :category, :presence =>true
  validates :title, :uniqueness =>true
  default_scope :order =>{:date=>'desc'}
end
