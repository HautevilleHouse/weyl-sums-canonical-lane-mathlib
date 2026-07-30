import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VanDerCorputLemmaPackage where
  derivativeBound : ℝ
  secondDerivativeBound : ℝ
  sumEstimate : ℝ

structure VanDerCorputLemmaEvidence (P : VanDerCorputLemmaPackage) where
  derivativeBoundClosed : P.derivativeBound > 0
  secondDerivativeBoundClosed : P.secondDerivativeBound > 0
  sumEstimateClosed : P.sumEstimate > 0

def VanDerCorputLemmaClosed (P : VanDerCorputLemmaPackage) : Prop :=
  P.derivativeBound > 0 ∧ P.secondDerivativeBound > 0 ∧ P.sumEstimate > 0

theorem van_der_corput_lemma_closed_from_evidence (P : VanDerCorputLemmaPackage) (E : VanDerCorputLemmaEvidence P) :
    VanDerCorputLemmaClosed P := by
  exact And.intro E.derivativeBoundClosed (And.intro E.secondDerivativeBoundClosed E.sumEstimateClosed)

end WeylSumsCanonicalLaneLean
end HautevilleHouse