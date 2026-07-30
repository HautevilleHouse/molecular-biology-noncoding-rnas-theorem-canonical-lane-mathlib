import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  noncodingRnas : Type v
  targetGenes : Type w
  regulatoryInteractions : Prop
  feedbackLoops : Prop
  stabilityCondition : Prop

structure NoncodingRnaRegulatoryNetworkEvidence (N : NoncodingRnaRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : N.regulatoryInteractions
  feedbackLoopsClosed : N.feedbackLoops
  stabilityConditionClosed : N.stabilityCondition

def NoncodingRnaRegulatoryNetworkClosed (N : NoncodingRnaRegulatoryNetworkPackage) : Prop :=
  N.regulatoryInteractions ∧ N.feedbackLoops ∧ N.stabilityCondition

theorem noncoding_rna_regulatory_network_closed_from_evidence
    (N : NoncodingRnaRegulatoryNetworkPackage)
    (E : NoncodingRnaRegulatoryNetworkEvidence N) :
    NoncodingRnaRegulatoryNetworkClosed N := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.feedbackLoopsClosed E.stabilityConditionClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse