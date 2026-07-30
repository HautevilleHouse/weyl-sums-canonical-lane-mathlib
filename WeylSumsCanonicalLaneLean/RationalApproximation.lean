import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure RationalApproximation where
  realNumber : ℝ
  denominatorBound : ℕ
  epsilon : ℚ
  approximationClosed : Prop

def rationalApproxClosed (R : RationalApproximation) : Prop :=
  R.approximationClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse