import canonicalLaneMathlib.AdmissibleClass
import WeylSumsCanonicalLaneLean.ExponentialSumEstimates

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VanDerCorputPackage (P : ExponentialSumPackage) where
  derivativeBound : ℕ → Prop
  differenceOperator : ℕ → (ℤ → ℂ)
  vanDerCorputInequality : ℕ → Prop
  exponentCondition : ℕ

structure VanDerCorputEvidence (P : ExponentialSumPackage) (V : VanDerCorputPackage P) where
  derivativeBoundClosed : ∀ k : ℕ, V.derivativeBound k
  vanDerCorputInequalityClosed : ∀ k : ℕ, V.vanDerCorputInequality k

def VanDerCorputClosed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) : Prop :=
  (∀ k : ℕ, V.derivativeBound k) ∧ (∀ k : ℕ, V.vanDerCorputInequality k)

theorem van_der_corput_closed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (E : VanDerCorputEvidence P V) : VanDerCorputClosed P V := by
  exact And.intro E.derivativeBoundClosed E.vanDerCorputInequalityClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse
