require 'spec_helper'

describe PragmaticTokenizer do
  context 'Language: Italian (IT)' do
    it 'tokenizes a string #001' do
      text = "L'hanno scorso s'era  un'antico d'altro dall'antico dell'antico nell'antico sull'antico agl'inni dagl'inni degl'inni negl'inni sugl'inni"
      pt = PragmaticTokenizer::Tokenizer.new(
          language: 'it'
      )
      expect(pt.tokenize(text)).to eq(["l'", "hanno", "scorso", "s'", "era", "un'", "antico", "d'", "altro", "dall'", "antico", "dell'", "antico", "nell'", "antico", "sull'", "antico", "agl'", "inni", "dagl'", "inni", "degl'", "inni", "negl'", "inni", "sugl'", "inni"])
    end
  end
end