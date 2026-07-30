import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure DiseaseAssociationPathwayPackage where
  cancerPathway : Prop
  neurologicalDisorder : Prop
  cardiovascularDisease : Prop
  metabolicSyndrome : Prop
  infectiousDisease : Prop

structure DiseaseAssociationPathwayEvidence (D : DiseaseAssociationPathwayPackage) where
  cancerPathwayClosed : D.cancerPathway
  neurologicalDisorderClosed : D.neurologicalDisorder
  cardiovascularDiseaseClosed : D.cardiovascularDisease
  metabolicSyndromeClosed : D.metabolicSyndrome
  infectiousDiseaseClosed : D.infectiousDisease

def DiseaseAssociationPathwayClosed (D : DiseaseAssociationPathwayPackage) : Prop :=
  D.cancerPathway ∧
  D.neurologicalDisorder ∧
  D.cardiovascularDisease ∧
  D.metabolicSyndrome ∧
  D.infectiousDisease

theorem disease_association_pathway_closed_from_evidence
    (D : DiseaseAssociationPathwayPackage) (E : DiseaseAssociationPathwayEvidence D) :
    DiseaseAssociationPathwayClosed D := by
  exact And.intro E.cancerPathwayClosed
    (And.intro E.neurologicalDisorderClosed
      (And.intro E.cardiovascularDiseaseClosed
        (And.intro E.metabolicSyndromeClosed E.infectiousDiseaseClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse