class Recipe
  include Neo4j::ActiveNode
  property :name, type: String
  property :description, type: String

  validates_presence_of :name, :description
end
