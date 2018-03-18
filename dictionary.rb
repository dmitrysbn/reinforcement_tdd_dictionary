class Dictionary

  attr_accessor :entries, :keywords

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == String
      entries[entry] = nil
    else
      entries[entry.first[0]] = entry.first[1]
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(word)
    keywords.include?(word)
  end

  def find(word)
    entries.select{|k, v| k.include?(word)}
  end






end
