import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeylSumsCanonicalLaneLean.WeylSumExponentialSum

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure DifferenceOperatorPackage {W : WeylSumPackage} where
  stepSize : ℕ
  operator : ℚ → ℂ
  bound : Prop
  iterateBound : Prop

structure DifferenceOperatorEvidence {W : WeylSumPackage} (D : DifferenceOperatorPackage W) where
  boundClosed : D.bound
  iterateBoundClosed : D.iterateBound

def DifferenceOperatorClosed {W : WeylSumPackage} (D : DifferenceOperatorPackage W) : Prop :=
  D.bound ∧ D.iterateBound

theorem difference_operator_closed_from_evidence {W : WeylSumPackage}
    (D : DifferenceOperatorPackage W) (E : DifferenceOperatorEvidence D) :
    DifferenceOperatorClosed D := by
  exact And.intro E.boundClosed E.iterateBoundClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse