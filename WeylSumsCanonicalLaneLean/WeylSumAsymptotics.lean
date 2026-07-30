import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure WeylSumAsymptoticsPackage (E : ExponentialSumPackage) where
  asymptoticFormula : Prop
  leadingCoefficient : ℚ
  errorDecay : ℕ → Prop
  uniformityInParameter : Prop

structure WeylSumAsymptoticsEvidence {E : ExponentialSumPackage}
    (W : WeylSumAsymptoticsPackage E) where
  asymptoticFormulaClosed : W.asymptoticFormula
  leadingCoefficientClosed : W.leadingCoefficient = 0 → False
  errorDecayClosed : ∀ n : ℕ, W.errorDecay n
  uniformityInParameterClosed : W.uniformityInParameter

def WeylSumAsymptoticsClosed {E : ExponentialSumPackage}
    (W : WeylSumAsymptoticsPackage E) : Prop :=
  W.asymptoticFormula ∧ (W.leadingCoefficient = 0 → False) ∧ (∀ n : ℕ, W.errorDecay n) ∧ W.uniformityInParameter

theorem weyl_sum_asymptotics_closed_from_evidence
    {E : ExponentialSumPackage} (W : WeylSumAsymptoticsPackage E)
    (We : WeylSumAsymptoticsEvidence W) : WeylSumAsymptoticsClosed W := by
  exact And.intro We.asymptoticFormulaClosed
    (And.intro We.leadingCoefficientClosed
      (And.intro (fun n => We.errorDecayClosed n) We.uniformityInParameterClosed))

end WeylSumsCanonicalLaneLean
end HautevilleHouse