import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaDiseaseAssociationPackage where
  expressionDysregulation : Prop
  mutationAssociation : Prop
  pathwayInterference : Prop
  diagnosticBiomarker : Prop
  therapeuticTarget : Prop
  diseaseEvidence : expressionDysregulation ∧ mutationAssociation ∧ pathwayInterference ∧ diagnosticBiomarker ∧ therapeuticTarget

structure NoncodingRnaDiseaseAssociationEvidence (P : NoncodingRnaDiseaseAssociationPackage) where
  expressionDysregulationClosed : P.expressionDysregulation
  mutationAssociationClosed : P.mutationAssociation
  pathwayInterferenceClosed : P.pathwayInterference
  diagnosticBiomarkerClosed : P.diagnosticBiomarker
  therapeuticTargetClosed : P.therapeuticTarget

def NoncodingRnaDiseaseAssociationClosed (P : NoncodingRnaDiseaseAssociationPackage) : Prop :=
  P.expressionDysregulation ∧ P.mutationAssociation ∧ P.pathwayInterference ∧ P.diagnosticBiomarker ∧ P.therapeuticTarget

theorem noncoding_rna_disease_association_closed_from_evidence
    (P : NoncodingRnaDiseaseAssociationPackage) (E : NoncodingRnaDiseaseAssociationEvidence P) :
    NoncodingRnaDiseaseAssociationClosed P := by
  exact And.intro E.expressionDysregulationClosed
    (And.intro E.mutationAssociationClosed
      (And.intro E.pathwayInterferenceClosed
        (And.intro E.diagnosticBiomarkerClosed E.therapeuticTargetClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse