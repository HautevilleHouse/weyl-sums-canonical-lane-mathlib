import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure MajorArcAnalysisPackage {W : WeylSumPackage}
    (V : VanDerCorputMethodPackage W) where
  rationalApproximation : Prop
  gaussSumEstimate : Prop
  arcContribution : Prop

structure MajorArcAnalysisEvidence {W : WeylSumPackage}
    {V : VanDerCorputMethodPackage W} (M : MajorArcAnalysisPackage V) where
  rationalApproximationClosed : M.rationalApproximation
  gaussSumEstimateClosed : M.gaussSumEstimate
  arcContributionClosed : M.arcContribution

def MajorArcAnalysisClosed {W : WeylSumPackage}
    {V : VanDerCorputMethodPackage W} (M : MajorArcAnalysisPackage V) : Prop :=
  M.rationalApproximation ∧ M.gaussSumEstimate ∧ M.arcContribution

theorem major_arc_analysis_closed_from_evidence
    {W : WeylSumPackage} {V : VanDerCorputMethodPackage W}
    (M : MajorArcAnalysisPackage V) (E : MajorArcAnalysisEvidence M) :
    MajorArcAnalysisClosed M := by
  exact And.intro E.rationalApproximationClosed
    (And.intro E.gaussSumEstimateClosed E.arcContributionClosed)

end WeylSumsCanonicalLaneLean
end HautevilleHouse