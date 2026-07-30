import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaPopulationDynamicsPackage where
  rnaSpecies : Type u
  populationState : rnaSpecies -> Nat
  birthRate : rnaSpecies -> ℝ
  deathRate : rnaSpecies -> ℝ
  interactionMatrix : rnaSpecies -> rnaSpecies -> ℝ
  differentialEquationDefined : Prop
  equilibriumPoints : Prop
  stabilityAnalysis : Prop

structure NoncodingRnaPopulationDynamicsEvidence (P : NoncodingRnaPopulationDynamicsPackage) where
  differentialEquationDefinedClosed : P.differentialEquationDefined
  equilibriumPointsClosed : P.equilibriumPoints
  stabilityAnalysisClosed : P.stabilityAnalysis

def NoncodingRnaPopulationDynamicsClosed (P : NoncodingRnaPopulationDynamicsPackage) : Prop :=
  P.differentialEquationDefined ∧ P.equilibriumPoints ∧ P.stabilityAnalysis

theorem noncoding_rna_population_dynamics_closed_from_evidence
    (P : NoncodingRnaPopulationDynamicsPackage) (E : NoncodingRnaPopulationDynamicsEvidence P) :
    NoncodingRnaPopulationDynamicsClosed P := by
  exact And.intro E.differentialEquationDefinedClosed
    (And.intro E.equilibriumPointsClosed E.stabilityAnalysisClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse