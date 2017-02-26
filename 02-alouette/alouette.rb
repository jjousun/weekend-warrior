class Alouette
  attr_reader :nouns, :refrain, :lyrics

  def initialize
    @nouns = ["Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!"]
    @refrain  = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    @lyrics = nil
  end

  def self.lines_for_verse(num)
    @nouns = ["Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!"]
    @lyrics = @nouns[(-1-num)..-1]
  end

  def self.verse(num)
    # @lines_for_verse(2) => @lyrics = ["Et les yeux!", "Et le bec!", "Et la tete!"]
    # verse(2) => "Je te plumerai les yeux.
                # Je te plumerai les yeux.
                # Et les yeux!
                # Et les yeux!
                # Et le bec!
                # Et le bec!
                # Et la tête!
                # Et la tête!
                # Alouette!
                # Alouette!
                # A-a-a-ah"
    lines_for_verse(num)

    key_phrase = @lyrics[0].split(' ')[1..-1].join(' ').chomp('!')

    @lyrics.each { |phrase| puts "#{phrase}\n" * 2 }

    verse = "Je te plumerai #{key_phrase}.\n" * 2 + "Alouette!\n" * 2 + "A-a-a-ah\n"

    return verse

  end

  def self.sing

  end

end

bird = Alouette.verse(2)
