import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaComplex where
  rnaSequence : String
  secondaryStructure : Prop
  bindingProteins : List String
  regulatoryFunction : Prop

def NoncodingRnaComplexClosed (N : NoncodingRnaComplex) : Prop :=
  N.secondaryStructure ∧ N.regulatoryFunction

theorem noncoding_rna_complex_closed_from_evidence (N : NoncodingRnaComplex)
    (hSec : N.secondaryStructure) (hReg : N.regulatoryFunction) :
    NoncodingRnaComplexClosed N := by
  exact And.intro hSec hReg

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse