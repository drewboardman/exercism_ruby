require "spec_helper"

describe "Phrase" do
  context "#word_count" do
    
    it "correctly parses the sentence 'word' " do
      phrase = Phrase.new('word')
      count = { 'word' => 1 }
      expect(phrase.word_count).to eq(count) 
    end

    it "correctly parses the sentence 'one of each'" do
      phrase = Phrase.new('one of each')
      count = { 'one' => 1, 'of' => 1, 'each' => 1 }
      expect(phrase.word_count).to eq(count) 
    end

    it "correctly parses the sentence 'one fish two fish red fish blue fish'" do
      phrase = Phrase.new('one fish two fish red fish blue fish')
      count = { 'one' => 1, 'fish' => 4, 'two' => 1, 'red' => 1, 'blue' => 1 }
      expect(phrase.word_count).to eq(count)  
    end

    it "correctly parses the sentence 'all the kings horses and all the kings men'" do
      phrase = Phrase.new('all the kings horses and all the kings men')
      count = {
      'all' => 2, 'the' => 2, 'kings' => 2,
      'horses' => 1, 'and' => 1, 'men' => 1
    }
      expect(phrase.word_count).to eq(count)  
    end

    it "ignores non-letters or integers with sentence 'car : carpet as java : javascript!!&@$%^&'" do
      phrase = Phrase.new('car : carpet as java : javascript!!&@$%^&')
      count = counts = {
      'car' => 1, 'carpet' => 1, 'as' => 1,
      'java' => 1, 'javascript' => 1
    }
      expect(phrase.word_count).to eq(count)  
    end

    it "works without spaces in sentence 'one,two,three'" do
      phrase = Phrase.new('one,two,three')
      count = { 'one' => 1, 'two' => 1, 'three' => 1 }
      expect(phrase.word_count).to eq(count)  
    end

    it "works with escape characters like 'one,\ntwo,\nthree'" do
      phrase = Phrase.new("one,\ntwo,\nthree")
      count = { 'one' => 1, 'two' => 1, 'three' => 1 }
      expect(phrase.word_count).to eq(count)  
    end

    it "handles number 'testing, 1, 2 testing'" do
      phrase = Phrase.new('testing, 1, 2 testing')
      count = { 'testing' => 2, '1' => 1, '2' => 1 }
      expect(phrase.word_count).to eq(count)  
    end

    it "doesn't break with capitalization 'go Go GO'" do
      phrase = Phrase.new('go Go GO')
      count = { 'go' => 3 }
      expect(phrase.word_count).to eq(count)  
    end

    it "doesn't break with apostophes 'First: don't laugh. Then: don't cry.'" do
      phrase = Phrase.new("First: don't laugh. Then: don't cry.")
      count = {
      'first' => 1, "don't" => 2, 'laugh' => 1,
      'then' => 1, 'cry' => 1
    }
    expect(phrase.word_count).to eq(count)  
    end

  end
end