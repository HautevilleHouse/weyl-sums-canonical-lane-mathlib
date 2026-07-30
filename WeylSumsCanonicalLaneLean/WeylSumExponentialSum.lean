import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure WeylSumExponentialSumPackage where
  exponent : ℕ
  coefficients : List ℂ
  interval : ℂ → ℂ
  bound : ℝ

def WeylSumExponentialSumClosed (P : WeylSumExponentialSumPackage) : Prop :=
  P.bound > 0

end WeylSumsCanonicalLaneLean
end HautevilleHouse