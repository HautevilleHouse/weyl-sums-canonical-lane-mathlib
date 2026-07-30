import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VanDerCorputMethodPackage (W : WeylSumPackage) where
  derivativeEstimate : Prop
  summationByParts : Prop
  exponentImprovement : Prop

structure VanDerCorputMethodEvidence {W : WeylSumPackage} (V : VanDerCorputMethodPackage W) where
  derivativeEstimateClosed : V.derivativeEstimate
  summationByPartsClosed : V.summationByParts
  exponentImprovementClosed : V.exponentImprovement

def VanDerCorputMethodClosed {W : WeylSumPackage} (V : VanDerCorputMethodPackage W) : Prop :=
  V.derivativeEstimate ∧ V.summationByParts ∧ V.exponentImprovement

theorem van_der_corput_method_closed_from_evidence
    {W : WeylSumPackage} (V : VanDerCorputMethodPackage W)
    (E : VanDerCorputMethodEvidence V) : VanDerCorputMethodClosed V := by
  exact And.intro E.derivativeEstimateClosed
    (And.intro E.summationByPartsClosed E.exponentImprovementClosed)

end WeylSumsCanonicalLaneLean
end HautevilleHouse