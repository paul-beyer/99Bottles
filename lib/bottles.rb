class Bottles

  def verse(bottle_number)
    
    if (bottle_number >= 2)
      return above_two_bottle_verse(bottle_number)
    end

    if (bottle_number == 1) 
      return one_bottle_verse
    end

    if (bottle_number < 1)
      zero_bottle_verse
    end 
    
  end

  def above_two_bottle_verse (bottle)
    next_bottle = bottle - 1
    last_phrase = next_bottle == 1 ? "#{next_bottle} bottle of beer on the wall.\n" : "#{next_bottle} bottles of beer on the wall.\n"
    "#{bottle} bottles of beer on the wall, " +
    "#{bottle} bottles of beer.\n" +
    "Take one down and pass it around, " +
    last_phrase

  end  

  def one_bottle_verse
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def zero_bottle_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def verses(start_bottle, end_bottle)
    next_bottle = start_bottle
    all_verses = String.new
    while next_bottle >= end_bottle do

      if all_verses.empty?
        all_verses.concat(verse(next_bottle))
      else
        all_verses.concat("\n") 
        all_verses.concat(verse(next_bottle))
      end
      next_bottle = next_bottle - 1
    end
    all_verses
  end 

 
  def song
    verses(99,0)
  end

end
