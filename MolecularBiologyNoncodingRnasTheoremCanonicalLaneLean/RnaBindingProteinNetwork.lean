import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure RnaBindingProteinNetworkPackage where
  bindingMotif : Prop
  competitionRate : Prop
  cooperativity : Prop
  spatialLocalization : Prop
  downstreamEffect : Prop

structure RnaBindingProteinNetworkEvidence (N : RnaBindingProteinNetworkPackage) where
  bindingMotifClosed : N.bindingMotif
  competitionRateClosed : N.competitionRate
  cooperativityClosed : N.cooperativity
  spatialLocalizationClosed : N.spatialLocalization
  downstreamEffectClosed : N.downstreamEffect

def RnaBindingProteinNetworkClosed (N : RnaBindingProteinNetworkPackage) : Prop :=
  N.bindingMotif ∧
  N.competitionRate ∧
  N.cooperativity ∧
  N.spatialLocalization ∧
  N.downstreamEffect

theorem rna_binding_protein_network_closed_from_evidence
    (N : RnaBindingProteinNetworkPackage) (E : RnaBindingProteinNetworkEvidence N) :
    RnaBindingProteinNetworkClosed N := by
  exact And.intro E.bindingMotifClosed
    (And.intro E.competitionRateClosed
      (And.intro E.cooperativityClosed
        (And.intro E.spatialLocalizationClosed E.downstreamEffectClosed)))

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse