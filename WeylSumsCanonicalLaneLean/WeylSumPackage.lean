import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure WeylSumPackage where
  character : Type u
  additiveCharacter : Prop
  interval : Type v
  sumLength : Nat
  weylSum : Type w
  exponentDerived : Prop

structure WeylSumEvidence (W : WeylSumPackage) where
  additiveCharacterClosed : W.additiveCharacter
  exponentDerivedClosed : W.exponentDerived

def WeylSumClosed (W : WeylSumPackage) : Prop :=
  W.additiveCharacter ∧ W.exponentDerived

theorem weyl_sum_closed_from_evidence (W : WeylSumPackage) (E : WeylSumEvidence W) :
    WeylSumClosed W := by
  exact And.intro E.additiveCharacterClosed E.exponentDerivedClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse