import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaBiogenesisPackage where
  transcriptionRegulation : Prop
  processingSteps : Prop
  nuclearExport : Prop
  stabilityControl : Prop
  degradationPathway : Prop

structure NoncodingRnaBiogenesisEvidence (B : NoncodingRnaBiogenesisPackage) where
  transcriptionRegulationClosed : B.transcriptionRegulation
  processingStepsClosed : B.processingSteps
  nuclearExportClosed : B.nuclearExport
  stabilityControlClosed : B.stabilityControl
  degradationPathwayClosed : B.degradationPathway

def NoncodingRnaBiogenesisClosed (B : NoncodingRnaBiogenesisPackage) : Prop :=
  B.transcriptionRegulation ∧
  B.processingSteps ∧
  B.nuclearExport ∧
  B.stabilityControl ∧
  B.degradationPathway

theorem noncoding_rna_biogenesis_closed_from_evidence
    (B : NoncodingRnaBiogenesisPackage) (E : NoncodingRnaBiogenesisEvidence B) :
    NoncodingRnaBiogenesisClosed B := by
  exact And.intro E.transcriptionRegulationClosed
    (And.intro E.processingStepsClosed
      (And.intro E.nuclearExportClosed
        (And.intro E.stabilityControlClosed E.degradationPathwayClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse