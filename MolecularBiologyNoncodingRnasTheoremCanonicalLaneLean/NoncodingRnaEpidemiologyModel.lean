import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaEpidemiologyPackage where
  hostPopulation : Type u
  rnaVariant : Type v
  infectionRate : rnaVariant -> ℝ
  recoveryRate : rnaVariant -> ℝ
  epidemiologicalClasses : Prop
  basicReproductiveNumber : Prop
  compartmentModelDefined : Prop

structure NoncodingRnaEpidemiologyEvidence (E : NoncodingRnaEpidemiologyPackage) where
  epidemiologicalClassesClosed : E.epidemiologicalClasses
  basicReproductiveNumberClosed : E.basicReproductiveNumber
  compartmentModelDefinedClosed : E.compartmentModelDefined

def NoncodingRnaEpidemiologyClosed (E : NoncodingRnaEpidemiologyPackage) : Prop :=
  E.epidemiologicalClasses ∧ E.basicReproductiveNumber ∧ E.compartmentModelDefined

theorem noncoding_rna_epidemiology_closed_from_evidence
    (E : NoncodingRnaEpidemiologyPackage) (Ev : NoncodingRnaEpidemiologyEvidence E) :
    NoncodingRnaEpidemiologyClosed E := by
  exact And.intro Ev.epidemiologicalClassesClosed
    (And.intro Ev.basicReproductiveNumberClosed Ev.compartmentModelDefinedClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse