import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaEvolutionaryGamePackage where
  strategySet : Type u
  payoffMatrix : strategySet -> strategySet -> ℝ
  replicatorDynamicsDefined : Prop
  evolutionarilyStableStrategies : Prop
  mutationSelectionBalance : Prop

structure NoncodingRnaEvolutionaryGameEvidence (G : NoncodingRnaEvolutionaryGamePackage) where
  replicatorDynamicsDefinedClosed : G.replicatorDynamicsDefined
  evolutionarilyStableStrategiesClosed : G.evolutionarilyStableStrategies
  mutationSelectionBalanceClosed : G.mutationSelectionBalance

def NoncodingRnaEvolutionaryGameClosed (G : NoncodingRnaEvolutionaryGamePackage) : Prop :=
  G.replicatorDynamicsDefined ∧ G.evolutionarilyStableStrategies ∧ G.mutationSelectionBalance

theorem noncoding_rna_evolutionary_game_closed_from_evidence
    (G : NoncodingRnaEvolutionaryGamePackage) (E : NoncodingRnaEvolutionaryGameEvidence G) :
    NoncodingRnaEvolutionaryGameClosed G := by
  exact And.intro E.replicatorDynamicsDefinedClosed
    (And.intro E.evolutionarilyStableStrategiesClosed E.mutationSelectionBalanceClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse