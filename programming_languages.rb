def reformat_languages(languages)
  # your code here
  lang_attr = {}

  languages.each do |oo_or_functional, language_hash|
    #:oo, {:ruby => {...}}
    language_hash.each do |language, attribute_hash|
      #:ruby, {:type => "interpreted"}
      attribute_hash.each do |attribute, str_value|
        #:type, "interpreted"
        if lang_attr[language].nil?
          #if language :ruby doesn't exist in new hash
          lang_attr[language] = {}  #initiate a new hash for the value of :ruby
        end
        # this would cause us problems if we had more than one attribute we're iterating over
        lang_attr[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        lang_attr[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
        if lang_attr[language][attribute].nil?
          #if :ruby language key doesn't have a :type key nested within it
          lang_attr[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  lang_attr
end
