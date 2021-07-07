def reformat_languages(languages)
  new_hash = {}
  languages.collect do |style, language|
  	language.collect do |language_name, values|
  		values[:style] = []
  		new_hash[language_name] = values
  		if new_hash.keys.include?(language_name)
	      new_hash[language_name][:style] << style
	    end
	end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end

