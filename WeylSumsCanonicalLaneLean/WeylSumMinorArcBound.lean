import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure MinorArcBound where
  minorArcEstimate : ℂ
  weylSumReference : ℂ
  minorArcClosed : Prop

def minorArcBoundClosed (M : MinorArcBound) : Prop :=
  M.minorArcClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse