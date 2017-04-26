describe Operators::Serializer do
  describe '#as_json' do
    it 'is abstract' do
      serializer = Operators::Serializer.new(spy)

      expect { serializer.as_json }.to raise_error('Not implemented')
    end

    it 'should return serialized entity'
  end

  describe '#to_json' do
    it 'is abstract' do
      serializer = Operators::Serializer.new(spy)

      expect { serializer.to_json }.to raise_error('Not implemented')
    end
  end

  describe '.serialize_collection' do
    it 'should return serialized collection'
  end
end
