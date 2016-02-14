module PragmaticTokenizer
  module Languages
    module Catalan
      include Languages::Common
      ABBREVIATIONS = Set.new([]).freeze
      STOP_WORDS = Set.new(["a", "abans", "algun", "alguna", "algunes", "alguns", "altre", "amb", "ambdós", "anar", "ans", "aquell", "aquelles", "aquells", "aquí", "bastant", "bé", "cada", "com", "consegueixo", "conseguim", "conseguir", "consigueix", "consigueixen", "consigueixes", "dalt", "de", "des de", "dins", "el", "elles", "ells", "els", "en", "ens", "entre", "era", "erem", "eren", "eres", "es", "és", "éssent", "està", "estan", "estat", "estava", "estem", "esteu", "estic", "ets", "fa", "faig", "fan", "fas", "fem", "fer", "feu", "fi", "haver", "i", "inclòs", "jo", "la", "les", "llarg", "llavors", "mentre", "meu", "mode", "molt", "molts", "nosaltres", "o", "on", "per", "per que", "però", "perquè", "podem", "poden", "poder", "podeu", "potser", "primer", "puc", "quan", "quant", "qui", "sabem", "saben", "saber", "sabeu", "sap", "saps", "sense", "ser", "seu", "seus", "si", "soc", "solament", "sols", "som", "sota", "també", "te", "tene", "tenim", "tenir", "teniu", "teu", "tinc", "tot", "últim", "un", "una", "unes", "uns", "ús", "va", "vaig", "van", "vosaltres"]).freeze
      CONTRACTIONS = {}.freeze
    end
  end
end
