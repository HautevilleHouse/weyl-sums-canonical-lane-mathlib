import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure ExponentialSumPackage where
  n : ℕ
  coefficients : ℤ → ℂ
  phasePolynomial : ℤ → ℂ
  exponent : ℕ
  sumBounds : ℂ → Prop

def ExponentialSumClosed (P : ExponentialSumPackage) : Prop :=
  P.sumBounds 0

struct ExponentialSumEvidence (P : ExponentialSumPackage) where
  sumBoundsClosed : P.sumBounds 0

theorem exponential_sum_closed (P : ExponentialSumPackage) (E : ExponentialSumEvidence P) : ExponentialSumClosed P := by
  exact E.sumBoundsClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse
