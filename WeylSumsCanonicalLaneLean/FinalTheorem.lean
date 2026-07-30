import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

def ConstrainedWeylSumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_weyl_sum_endgame (A : AdmissibleClass) :
    ConstrainedWeylSumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WeylSumsCanonicalLaneLean
end HautevilleHouse