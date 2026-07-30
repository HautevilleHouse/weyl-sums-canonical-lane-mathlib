import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure HardyLittlewoodMethodPackage where
  majorArcsBound : ℝ
  minorArcsBound : ℝ
  circleMethodApplied : Prop

structure HardyLittlewoodMethodEvidence (P : HardyLittlewoodMethodPackage) where
  majorArcsBoundClosed : P.majorArcsBound > 0
  minorArcsBoundClosed : P.minorArcsBound > 0
  circleMethodAppliedClosed : P.circleMethodApplied

def HardyLittlewoodMethodClosed (P : HardyLittlewoodMethodPackage) : Prop :=
  P.majorArcsBound > 0 ∧ P.minorArcsBound > 0 ∧ P.circleMethodApplied

theorem hardy_littlewood_method_closed_from_evidence (P : HardyLittlewoodMethodPackage) (E : HardyLittlewoodMethodEvidence P) :
    HardyLittlewoodMethodClosed P := by
  exact And.intro E.majorArcsBoundClosed (And.intro E.minorArcsBoundClosed E.circleMethodAppliedClosed)

end WeylSumsCanonicalLaneLean
end HautevilleHouse