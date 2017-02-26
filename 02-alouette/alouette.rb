class Alouette
  attr_reader :nouns, :refrain, :lyrics

  def self.lines_for_verse(num)
    @nouns = ["Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!"]

    @lyrics = @nouns[(-1-num)..-1]
  end

  def self.verse(num)

    lines_for_verse(num)

    key_phrase = @lyrics[0].split(' ')[1..-1].join(' ').chomp('!')

    verse_begin = "Je te plumerai #{key_phrase}.\n" * 2

    verse_end = "Alouette!\n" * 2 + "A-a-a-ah"

    verse_middle = ""

    @lyrics.each do |phrase|
        verse_middle += "#{phrase}\n" * 2
     end

    return verse_begin + verse_middle + verse_end
  end

  def self.sing
    @refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    # return @refrain + "\n\n" + verse(0) + "\n\n" + @refrain + "\n\n" + verse(1) + "\n\n" + @refrain + "\n\n" + verse(2) + "\n\n" + @refrain + "\n\n" + verse(3) + "\n\n" + @refrain + "\n\n" + verse(4) + "\n\n" + @refrain + "\n\n" + verse(5) + "\n\n" + @refrain + "\n\n" + verse(6) + "\n\n" + @refrain + "\n\n" + verse(7) + "\n\n" + @refrain

    sing_ha = ""

    (0..7).each do |num|
      sing_ha += @refrain + "\n\n" + verse(num) + "\n\n"
    end

    return sing_ha + @refrain

  end

end
