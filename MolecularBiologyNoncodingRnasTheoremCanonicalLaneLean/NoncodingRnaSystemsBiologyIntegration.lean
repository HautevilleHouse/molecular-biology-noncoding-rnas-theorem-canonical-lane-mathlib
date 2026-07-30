import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaSystemsBiologyPackage where
  geneRegulatoryNetwork : Type u
  rnaInteractionGraph : Type v
  feedbackLoops : Prop
  robustnessAnalysis : Prop
  modularityDecomposition : Prop
  regulatoryRoleClassification : Prop

structure NoncodingRnaSystemsBiologyEvidence (S : NoncodingRnaSystemsBiologyPackage) where
  feedbackLoopsClosed : S.feedbackLoops
  robustnessAnalysisClosed : S.robustnessAnalysis
  modularityDecompositionClosed : S.modularityDecomposition
  regulatoryRoleClassificationClosed : S.regulatoryRoleClassification

def NoncodingRnaSystemsBiologyClosed (S : NoncodingRnaSystemsBiologyPackage) : Prop :=
  S.feedbackLoops ∧ S.robustnessAnalysis ∧ S.modularityDecomposition ∧ S.regulatoryRoleClassification

theorem noncoding_rna_systems_biology_closed_from_evidence
    (S : NoncodingRnaSystemsBiologyPackage) (E : NoncodingRnaSystemsBiologyEvidence S) :
    NoncodingRnaSystemsBiologyClosed S := by
  exact And.intro E.feedbackLoopsClosed
    (And.intro E.robustnessAnalysisClosed
      (And.intro E.modularityDecompositionClosed E.regulatoryRoleClassificationClosed))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse