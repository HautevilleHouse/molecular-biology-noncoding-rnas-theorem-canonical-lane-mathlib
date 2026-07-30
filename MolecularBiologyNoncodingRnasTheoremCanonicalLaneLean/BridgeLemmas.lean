import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NoncodingRnaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse