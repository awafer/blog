class Document
  include Mongoid::Document
  field :title, :type => String
  field :author, :type => String
  field :date, :type => Date
  field :body, :type => String
  field :category, :type=> String 
  ARTICLE_CATEGORY = ["FX","Stocks","bonds"]
end