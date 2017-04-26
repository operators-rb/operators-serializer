module Operators
  class Serializer < SimpleDelegator
    def self.serialize_collection(collection, *args)
      collection.map { |r| new(r).as_json(*args) }
    end

    def as_json(*)
      raise 'Not implemented'
    end

    def to_json(*)
      as_json.to_json
    end
  end
end
