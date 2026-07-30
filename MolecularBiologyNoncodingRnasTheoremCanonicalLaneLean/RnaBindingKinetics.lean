import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure RnaBindingKineticsPackage where
  bindingRates : Type u
  dissociationRates : Type v
  equilibriumConstants : Prop
  cooperativeBinding : Prop
  competitionWithOtherMolecules : Prop

structure RnaBindingKineticsEvidence (K : RnaBindingKineticsPackage) where
  equilibriumConstantsClosed : K.equilibriumConstants
  cooperativeBindingClosed : K.cooperativeBinding
  competitionWithOtherMoleculesClosed : K.competitionWithOtherMolecules

def RnaBindingKineticsClosed (K : RnaBindingKineticsPackage) : Prop :=
  K.equilibriumConstants ∧ K.cooperativeBinding ∧ K.competitionWithOtherMolecules

theorem rna_binding_kinetics_closed_from_evidence
    (K : RnaBindingKineticsPackage)
    (E : RnaBindingKineticsEvidence K) :
    RnaBindingKineticsClosed K := by
  exact And.intro E.equilibriumConstantsClosed
    (And.intro E.cooperativeBindingClosed E.competitionWithOtherMoleculesClosed)

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse