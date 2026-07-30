import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure CeRNACompetitionDynamicsPackage where
  micrornaSpecies : Type u
  competingRnas : Type v
  sequestrationRate : Prop
  stoichiometricBalance : Prop
  equilibriumConcentration : Prop

structure CeRNACompetitionDynamicsEvidence (C : CeRNACompetitionDynamicsPackage) where
  sequestrationRateClosed : C.sequestrationRate
  stoichiometricBalanceClosed : C.stoichiometricBalance
  equilibriumConcentrationClosed : C.equilibriumConcentration

def CeRNACompetitionDynamicsClosed (C : CeRNACompetitionDynamicsPackage) : Prop :=
  C.sequestrationRate ∧ C.stoichiometricBalance ∧ C.equilibriumConcentration

theorem cerna_competition_dynamics_closed_from_evidence
    (C : CeRNACompetitionDynamicsPackage)
    (E : CeRNACompetitionDynamicsEvidence C) : CeRNACompetitionDynamicsClosed C := by
  exact And.intro E.sequestrationRateClosed
    (And.intro E.stoichiometricBalanceClosed E.equilibriumConcentrationClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse