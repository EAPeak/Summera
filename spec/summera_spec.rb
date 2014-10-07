require 'rspec'
require_relative '../lib/summera'

describe 'summer' do

    it 'should take start and stop as argument'  do
      expect { summera() }.to raise_error ArgumentError
      expect { summera(stop:5) }.to raise_error ArgumentError
      expect { summera(start:1, stop:5) }.not_to raise_error
    end


    it 'should give 12 if start is 3 and stop is 5' do
    
      expect(summera(start:3,stop:5)).to match 12
    
    end

    it 'should give -12 if start is -2 and stop is -5' do

      expect(summera(start:2,stop:-5)).to match -12

    end

    it 'should give 1 if start is 1 and stop is 1' do

      expect(summera(start:1,stop:1)).to match 1

    end

end