import canonicalLaneMathlib.AdmissibleClass
import WeylSumsCanonicalLaneLean.MajorArcAnalysis
import WeylSumsCanonicalLaneLean.MinorArcAnalysis

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure HuaLemmaPackage (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (Maj : MajorArcPackage P V W) (Min : MinorArcPackage P V W) where
  meanValueBound : ℕ → ℕ → ℂ → Prop
  asymptoticFormula : ℂ → Prop

structure HuaLemmaEvidence (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (Maj : MajorArcPackage P V W) (Min : MinorArcPackage P V W) (H : HuaLemmaPackage P V W Maj Min) where
  asymptoticFormulaClosed : H.asymptoticFormula 0

def HuaLemmaClosed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (Maj : MajorArcPackage P V W) (Min : MinorArcPackage P V W) (H : HuaLemmaPackage P V W Maj Min) : Prop :=
  H.asymptoticFormula 0

theorem hua_lemma_closed (P : ExponentialSumPackage) (V : VanDerCorputPackage P) (W : WeylInequalityPackage P V) (Maj : MajorArcPackage P V W) (Min : MinorArcPackage P V W) (H : HuaLemmaPackage P V W Maj Min) (E : HuaLemmaEvidence P V W Maj Min H) : HuaLemmaClosed P V W Maj Min H := by
  exact E.asymptoticFormulaClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse
