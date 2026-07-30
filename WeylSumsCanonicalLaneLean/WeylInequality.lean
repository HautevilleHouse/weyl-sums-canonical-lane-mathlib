import canonicalLaneMathlib.AdmissibleClass
import WeylSumsCanonicalLaneLean.VanDerCorputEstimates

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure WeylInequalityPackage (P : ExponentialSumPackage) (V : VanDerCorputPackage P) where
  weylSum : ℕ → ℂ
  weylInequality : ℕ → ℝ → Prop
  exponentSequence : ℕ → ℕ

structure WeylInequalityEvidence (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) where
  weylInequalityClosed : ∀ (k : ℕ) (ε : ℝ), W.weylInequality k ε

def WeylInequalityClosed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) : Prop :=
  ∀ (k : ℕ) (ε : ℝ), W.weylInequality k ε

theorem weyl_inequality_closed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (E : WeylInequalityEvidence P V W) : WeylInequalityClosed P V W := by
  intro k ε
  exact E.weylInequalityClosed k ε

end WeylSumsCanonicalLaneLean
end HautevilleHouse
