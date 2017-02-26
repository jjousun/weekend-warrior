class Alouette
  attr_reader :nouns, :refrain, :lyrics, :verse_lines

  def initialize
    @nouns = ["Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!"]
    @refrain  = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    @lyrics = nil
    @verse_lines = ["Je te plumerai", ".", "Alouette!", "A-a-a-ah"]
  end

  def lines_for_verse(num)
    @lyrics = @nouns[(-1-num)..-1]
  end

  def verse(num)
    # @lines_for_verse(2) => @lyrics = ["Et les yeux!", "Et le bec!", "Et la tete!"]
    # verse(2) =>
    lines_for_verse(num)
    
    return "Je te plumerai + #{@lyrics[0]}.chomp('Et ').chomp('!') + .\n" * 2 + "#{@lyrics[0]}\n" + "Alouette!\n" * 2 + "A-a-a-ah"

  end

  def sing

  end
end
