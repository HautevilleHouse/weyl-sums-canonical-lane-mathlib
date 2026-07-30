import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeylSumsCanonicalLaneLean.WeylSumExponentialSum
import HautevilleHouse.WeylSumsCanonicalLaneLean.Weyl_VanDerCorputLemma

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure ExponentialSumEstimatePackage {W : WeylSumPackage}
    {V : VanDerCorputPackage W} where
  mainEstimate : Prop
  endpointEstimate : Prop

structure ExponentialSumEstimateEvidence {W : WeylSumPackage}
    {V : VanDerCorputPackage W} (E : ExponentialSumEstimatePackage V) where
  mainEstimateClosed : E.mainEstimate
  endpointEstimateClosed : E.endpointEstimate

def ExponentialSumEstimateClosed {W : WeylSumPackage}
    {V : VanDerCorputPackage W} (E : ExponentialSumEstimatePackage V) : Prop :=
  E.mainEstimate ∧ E.endpointEstimate

theorem exponential_sum_estimate_closed_from_evidence
    {W : WeylSumPackage} {V : VanDerCorputPackage W}
    (E : ExponentialSumEstimatePackage V) (Eev : ExponentialSumEstimateEvidence E) :
    ExponentialSumEstimateClosed E := by
  exact And.intro Eev.mainEstimateClosed Eev.endpointEstimateClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse