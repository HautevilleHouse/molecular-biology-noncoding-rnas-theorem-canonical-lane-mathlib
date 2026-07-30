import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure TranscriptBoundPackage where
  rnaSpecies : Type u
  bindingRegion : Type v
  chromatinAccessibility : Prop
  transcriptConcentration : Prop
  bindingAffinity : Prop

structure TranscriptBoundEvidence (T : TranscriptBoundPackage) where
  chromatinAccessibilityClosed : T.chromatinAccessibility
  transcriptConcentrationClosed : T.transcriptConcentration
  bindingAffinityClosed : T.bindingAffinity

def TranscriptBoundClosed (T : TranscriptBoundPackage) : Prop :=
  T.chromatinAccessibility ∧ T.transcriptConcentration ∧ T.bindingAffinity

theorem transcript_bound_closed_from_evidence (T : TranscriptBoundPackage)
    (E : TranscriptBoundEvidence T) : TranscriptBoundClosed T := by
  exact And.intro E.chromatinAccessibilityClosed
    (And.intro E.transcriptConcentrationClosed E.bindingAffinityClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse