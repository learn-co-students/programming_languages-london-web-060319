def reformat_languages(languages)
  data = languages.values.reduce({}, :merge)

  for style, group in languages do
    for language in group.keys

      if !data[language].include? :style
        data[language][:style] = []
      end

      data[language][:style] << style
    end
  end

  data
end
