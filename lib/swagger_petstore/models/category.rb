# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module SwaggerPetstore
  class Category < BaseModel
    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["name"] = "name"
      end
      @_hash
    end

    def initialize(id = nil,
                   name = nil)
      @id = id
      @name = name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      name = hash['name']

      # Create object from extracted values
      Category.new(id,
                   name)
    end
  end
end
