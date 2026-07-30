import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VinogradovMeanValuePackage (E : ExponentialSumPackage) where
  meanValueUpperBound : ℕ → ℕ → Prop
  meanValueLowerBound : ℕ → ℕ → Prop
  optimalExponent : ℚ
  regimeGap : ℕ → Prop

def VinogradovMeanValueClosed {E : ExponentialSumPackage}
    (V : VinogradovMeanValuePackage E) : Prop :=
  (∀ (s k : ℕ), V.meanValueUpperBound s k) ∧ (∀ (s k : ℕ), V.meanValueLowerBound s k) ∧
  V.optimalExponent > 0 ∧ (∀ n : ℕ, V.regimeGap n)

theorem vinogradov_mean_value_closed {E : ExponentialSumPackage}
    (V : VinogradovMeanValuePackage E) (h1 : ∀ (s k : ℕ), V.meanValueUpperBound s k)
    (h2 : ∀ (s k : ℕ), V.meanValueLowerBound s k) (h3 : V.optimalExponent > 0)
    (h4 : ∀ n : ℕ, V.regimeGap n) : VinogradovMeanValueClosed V := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end WeylSumsCanonicalLaneLean
end HautevilleHouse