import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure RnaBindingProteinInteractionsPackage where
  rbpIdentification : Prop
  bindingSiteMapping : Prop
  bindingAffinity : Prop
  regulationByRbps : Prop
  complexFormation : Prop
  interactionEvidence : rbpIdentification ∧ bindingSiteMapping ∧ bindingAffinity ∧ regulationByRbps ∧ complexFormation

structure RnaBindingProteinInteractionsEvidence (P : RnaBindingProteinInteractionsPackage) where
  rbpIdentificationClosed : P.rbpIdentification
  bindingSiteMappingClosed : P.bindingSiteMapping
  bindingAffinityClosed : P.bindingAffinity
  regulationByRbpsClosed : P.regulationByRbps
  complexFormationClosed : P.complexFormation

def RnaBindingProteinInteractionsClosed (P : RnaBindingProteinInteractionsPackage) : Prop :=
  P.rbpIdentification ∧ P.bindingSiteMapping ∧ P.bindingAffinity ∧ P.regulationByRbps ∧ P.complexFormation

theorem rna_binding_protein_interactions_closed_from_evidence
    (P : RnaBindingProteinInteractionsPackage) (E : RnaBindingProteinInteractionsEvidence P) :
    RnaBindingProteinInteractionsClosed P := by
  exact And.intro E.rbpIdentificationClosed
    (And.intro E.bindingSiteMappingClosed
      (And.intro E.bindingAffinityClosed
        (And.intro E.regulationByRbpsClosed E.complexFormationClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse