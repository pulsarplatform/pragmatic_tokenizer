require 'spec_helper'

describe PragmaticTokenizer do
  context 'Language: French (fr)' do
    it 'tokenizes a string #001' do
      text = "D'art de l'univers, c'est un art mallard's 'antique melò'"
      pt = PragmaticTokenizer::Tokenizer.new(
          language: 'fr'
      )
      expect(pt.tokenize(text)).to eq(["d'", "art", "de", "l'", "univers", ",", "c'" ,"est", "un", "art", "mallard's", "'", "antique", "melò", "'"])
    end
  end
end
