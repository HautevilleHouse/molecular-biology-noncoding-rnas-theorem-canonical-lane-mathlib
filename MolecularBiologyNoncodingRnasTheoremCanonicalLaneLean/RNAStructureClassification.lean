import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure RNAStructureClassificationPackage where
  primarySequence : String
  secondaryStructure : String -> Prop
  tertiaryInteraction : (String -> String) -> Prop
  functionalMotif : Prop
  homologyModel : Prop

structure RNAStructureClassificationEvidence (P : RNAStructureClassificationPackage) where
  secondaryStructureClosed : P.secondaryStructure P.primarySequence
  tertiaryInteractionClosed : P.tertiaryInteraction (fun _ => "")
  functionalMotifClosed : P.functionalMotif
  homologyModelClosed : P.homologyModel

def RNAStructureClassificationClosed (P : RNAStructureClassificationPackage) : Prop :=
  P.secondaryStructure P.primarySequence ∧
  P.tertiaryInteraction (fun _ => "") ∧
  P.functionalMotif ∧
  P.homologyModel

theorem rna_structure_classification_closed_from_evidence
    (P : RNAStructureClassificationPackage) (E : RNAStructureClassificationEvidence P) :
    RNAStructureClassificationClosed P := by
  exact And.intro E.secondaryStructureClosed
    (And.intro E.tertiaryInteractionClosed
      (And.intro E.functionalMotifClosed E.homologyModelClosed))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse