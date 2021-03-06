class Complement
  def self.of_dna(dna_strand)
    dna = Strand.new(dna_strand)
    dna.convert_strand_to_rna
  end

  def self.of_rna(rna_strand)
    rna = Strand.new(rna_strand)
    rna.convert_strand_to_dna
  end
end

class Strand
  attr_accessor :strand
  RNA_TO_DNA = {
    'C' => 'G',
    'A' => 'T',
    'U' => 'A',
    'G' => 'C'
  }

  DNA_TO_RNA = RNA_TO_DNA.invert

  def initialize(strand)
    @strand = strand.split(//)
  end

  def convert_strand_to_rna
    @strand.map { |char| DNA_TO_RNA.fetch(char)  }.reduce(:+)
  end

  def convert_strand_to_dna
    @strand.map { |char| RNA_TO_DNA.fetch(char)  }.reduce(:+)
  end

end