import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure RnaInterferencePathway where
  dicerCleavage : Prop
  riscLoading : Prop
  mrnaSilencing : Prop
  amplificationLoop : Prop

def RnaInterferencePathwayClosed (R : RnaInterferencePathway) : Prop :=
  R.dicerCleavage ∧ R.riscLoading ∧ R.mrnaSilencing ∧ R.amplificationLoop

theorem rna_interference_pathway_closed_from_evidence (R : RnaInterferencePathway)
    (hDicer : R.dicerCleavage) (hRisc : R.riscLoading)
    (hMrna : R.mrnaSilencing) (hAmp : R.amplificationLoop) :
    RnaInterferencePathwayClosed R := by
  exact And.intro hDicer (And.intro hRisc (And.intro hMrna hAmp))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse