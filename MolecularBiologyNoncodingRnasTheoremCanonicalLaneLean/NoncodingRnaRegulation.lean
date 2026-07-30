import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaRegulationPackage where
  transcriptionalRegulation : Prop
  translationalRegulation : Prop
  degradationControl : Prop
  localizationControl : Prop
  interactionNetwork : Prop
  regulatoryEvidence : transcriptionalRegulation ∧ translationalRegulation ∧ degradationControl ∧ localizationControl ∧ interactionNetwork

structure NoncodingRnaRegulationEvidence (P : NoncodingRnaRegulationPackage) where
  transcriptionalRegulationClosed : P.transcriptionalRegulation
  translationalRegulationClosed : P.translationalRegulation
  degradationControlClosed : P.degradationControl
  localizationControlClosed : P.localizationControl
  interactionNetworkClosed : P.interactionNetwork

def NoncodingRnaRegulationClosed (P : NoncodingRnaRegulationPackage) : Prop :=
  P.transcriptionalRegulation ∧ P.translationalRegulation ∧ P.degradationControl ∧ P.localizationControl ∧ P.interactionNetwork

theorem noncoding_rna_regulation_closed_from_evidence
    (P : NoncodingRnaRegulationPackage) (E : NoncodingRnaRegulationEvidence P) :
    NoncodingRnaRegulationClosed P := by
  exact And.intro E.transcriptionalRegulationClosed
    (And.intro E.translationalRegulationClosed
      (And.intro E.degradationControlClosed
        (And.intro E.localizationControlClosed E.interactionNetworkClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse