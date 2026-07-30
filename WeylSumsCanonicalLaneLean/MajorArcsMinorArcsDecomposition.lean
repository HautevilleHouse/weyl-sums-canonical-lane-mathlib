import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure MajorArcsPackage (E : ExponentialSumPackage) where
  majorArcsDensity : ℕ → ℚ → Prop
  arcRadius : ℚ
  mainContribution : ℕ → Prop

def MajorArcsClosed {E : ExponentialSumPackage} (M : MajorArcsPackage E) : Prop :=
  (∀ (n : ℕ) (q : ℚ), M.majorArcsDensity n q) ∧ M.arcRadius > 0 ∧ (∀ n : ℕ, M.mainContribution n)

theorem major_arcs_closed {E : ExponentialSumPackage} (M : MajorArcsPackage E)
    (h1 : ∀ (n : ℕ) (q : ℚ), M.majorArcsDensity n q) (h2 : M.arcRadius > 0)
    (h3 : ∀ n : ℕ, M.mainContribution n) : MajorArcsClosed M := by
  exact And.intro h1 (And.intro h2 h3)

structure MinorArcsPackage (E : ExponentialSumPackage) where
  minorArcsBound : ℕ → ℕ → Prop
  decayRate : ℚ
  uniformityEstimate : ℕ → Prop

def MinorArcsClosed {E : ExponentialSumPackage} (M : MinorArcsPackage E) : Prop :=
  (∀ (n m : ℕ), M.minorArcsBound n m) ∧ M.decayRate < 0 ∧ (∀ n : ℕ, M.uniformityEstimate n)

theorem minor_arcs_closed {E : ExponentialSumPackage} (M : MinorArcsPackage E)
    (h1 : ∀ (n m : ℕ), M.minorArcsBound n m) (h2 : M.decayRate < 0)
    (h3 : ∀ n : ℕ, M.uniformityEstimate n) : MinorArcsClosed M := by
  exact And.intro h1 (And.intro h2 h3)

structure MajorMinorDecompositionPackage (E : ExponentialSumPackage) where
  major : MajorArcsPackage E
  minor : MinorArcsPackage E
  decompositionValid : Prop

def MajorMinorDecompositionClosed {E : ExponentialSumPackage}
    (D : MajorMinorDecompositionPackage E) : Prop :=
  MajorArcsClosed D.major ∧ MinorArcsClosed D.minor ∧ D.decompositionValid

theorem major_minor_decomposition_closed {E : ExponentialSumPackage}
    (D : MajorMinorDecompositionPackage E) (hmaj : MajorArcsClosed D.major)
    (hmin : MinorArcsClosed D.minor) (hd : D.decompositionValid) :
    MajorMinorDecompositionClosed D := by
  exact And.intro hmaj (And.intro hmin hd)

end WeylSumsCanonicalLaneLean
end HautevilleHouse