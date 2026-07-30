import WeylSumsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeylSumsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WeylSumsCanonicalLaneLean
end HautevilleHouse
