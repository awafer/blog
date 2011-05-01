class Document
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  field :title, :type => String
  field :author, :type => String
  field :date, :type => Date
  field :body, :type => String 
  #ARTICLE_CATEGORY = ["FX","Stocks","bonds"]
  validates :title, :author, :body, :category, :presence =>true
  default_scope :order =>{:date=>'desc'}
  belongs_to :category
end