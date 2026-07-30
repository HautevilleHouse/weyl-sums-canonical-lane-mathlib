import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeylSumsCanonicalLaneLean.WeylSumExponentialSum

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VanDerCorputPackage {W : WeylSumPackage} where
  differenceOperator : ℕ → (ℚ → ℂ)
  differenceBound : Prop
  vanDerCorputEstimate : Prop

structure VanDerCorputEvidence {W : WeylSumPackage} (V : VanDerCorputPackage W) where
  differenceBoundClosed : V.differenceBound
  vanDerCorputEstimateClosed : V.vanDerCorputEstimate

def VanDerCorputClosed {W : WeylSumPackage} (V : VanDerCorputPackage W) : Prop :=
  V.differenceBound ∧ V.vanDerCorputEstimate

theorem van_der_corput_closed_from_evidence {W : WeylSumPackage}
    (V : VanDerCorputPackage W) (E : VanDerCorputEvidence V) :
    VanDerCorputClosed V := by
  exact And.intro E.differenceBoundClosed E.vanDerCorputEstimateClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse