import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeylSumsCanonicalLaneLean.WeylExponentialSumEstimates

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

def WeylSumsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem weyl_sums_endgame (A : AdmissibleClass) :
    WeylSumsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WeylSumsCanonicalLaneLean
end HautevilleHouse