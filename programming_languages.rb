require 'pry'



def reformat_languages(languages)
  new_hash = {}
  #iterate over first level old hash
  languages.each do |style, languages_data|
    languages_data.each do |language, type_hash|
      type_hash.each do |type_key, type_value|
        if style == :functional && language == :javascript
          new_hash[language][:style][1] = style
        else
          new_hash[language] = {type_key => type_value, :style => [style]}
        end
      end
    end
  end
  return new_hash
 end


