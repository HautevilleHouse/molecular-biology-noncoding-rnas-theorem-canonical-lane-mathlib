import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

structure NoncodingRnaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NoncodingRnaAdmittedObject where
  space : NoncodingRnaSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure NoncodingRnaEndgameState where
  object : NoncodingRnaAdmittedObject

def NoncodingRnaWitnessClosed (O : NoncodingRnaAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse