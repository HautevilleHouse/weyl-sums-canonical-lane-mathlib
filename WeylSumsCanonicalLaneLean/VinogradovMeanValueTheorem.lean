import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeylSumsCanonicalLaneLean.WeylSumExponentialSum

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure VinogradovMeanValueTheoremPackage where
  exponent : ℕ
  degree : ℕ
  meanValueBound : ℝ
  mainTerm : ℝ

structure VinogradovMeanValueTheoremEvidence (P : VinogradovMeanValueTheoremPackage) where
  meanValueBoundClosed : P.meanValueBound > 0
  mainTermClosed : P.mainTerm > 0

def VinogradovMeanValueTheoremClosed (P : VinogradovMeanValueTheoremPackage) : Prop :=
  P.meanValueBound > 0 ∧ P.mainTerm > 0

theorem vinogradov_mean_value_theorem_closed_from_evidence (P : VinogradovMeanValueTheoremPackage) (E : VinogradovMeanValueTheoremEvidence P) :
    VinogradovMeanValueTheoremClosed P := by
  exact And.intro E.meanValueBoundClosed E.mainTermClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse