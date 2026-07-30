import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure WeylIncisorEstimate where
  incisorSequences : List (ℕ → ℂ)
  degree : Nat
  incisorBound : ℂ
  incisorClosed : Prop

def weylIncisorClosed (W : WeylIncisorEstimate) : Prop :=
  W.incisorClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse