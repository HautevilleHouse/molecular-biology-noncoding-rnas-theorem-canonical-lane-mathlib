import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaEndpointClassificationPackage where
  experimentalValidation : Prop
  clinicalRelevance : Prop
  therapeuticTargetIdentification : Prop
  conclusion : Prop

structure NoncodingRnaEndpointClassificationEvidence (E : NoncodingRnaEndpointClassificationPackage) where
  experimentalValidationClosed : E.experimentalValidation
  clinicalRelevanceClosed : E.clinicalRelevance
  therapeuticTargetIdentificationClosed : E.therapeuticTargetIdentification
  conclusionClosed : E.conclusion

def NoncodingRnaEndpointClassificationClosed (E : NoncodingRnaEndpointClassificationPackage) : Prop :=
  E.experimentalValidation ∧ E.clinicalRelevance ∧ E.therapeuticTargetIdentification ∧ E.conclusion

theorem noncoding_rna_endpoint_classification_closed_from_evidence
    (E : NoncodingRnaEndpointClassificationPackage) (Ev : NoncodingRnaEndpointClassificationEvidence E) :
    NoncodingRnaEndpointClassificationClosed E := by
  exact And.intro Ev.experimentalValidationClosed
    (And.intro Ev.clinicalRelevanceClosed
      (And.intro Ev.therapeuticTargetIdentificationClosed Ev.conclusionClosed))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse