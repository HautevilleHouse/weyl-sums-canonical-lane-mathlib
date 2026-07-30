import canonicalLaneMathlib.AdmissibleClass
import WeylSumsCanonicalLaneLean.WeylInequality

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure MinorArcPackage (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) where
  minorArcSet : Set ℚ
  minorArcBound : ℂ → Prop
  weylSumOnMinorArcs : ℕ → ℂ
  exponentialSumOnMinorArcs : ℂ

structure MinorArcEvidence (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (M : MinorArcPackage P V W) where
  minorArcBoundClosed : M.minorArcBound 0

def MinorArcClosed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (M : MinorArcPackage P V W) : Prop :=
  M.minorArcBound 0

theorem minor_arc_closed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (M : MinorArcPackage P V W) (E : MinorArcEvidence P V W M) : MinorArcClosed P V W M := by
  exact E.minorArcBoundClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse
