import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure EvolutionaryConservation where
  sequenceConservation : Prop
  structuralConservation : Prop
  functionalConservation : Prop
  selectionPressure : Prop

def EvolutionaryConservationClosed (E : EvolutionaryConservation) : Prop :=
  E.sequenceConservation ∧ E.structuralConservation ∧ E.functionalConservation ∧ E.selectionPressure

theorem evolutionary_conservation_closed_from_evidence (E : EvolutionaryConservation)
    (hSeq : E.sequenceConservation) (hStr : E.structuralConservation)
    (hFun : E.functionalConservation) (hSel : E.selectionPressure) :
    EvolutionaryConservationClosed E := by
  exact And.intro hSeq (And.intro hStr (And.intro hFun hSel))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse