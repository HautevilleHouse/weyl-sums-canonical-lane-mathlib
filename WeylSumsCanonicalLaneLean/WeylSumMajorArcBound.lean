import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure MajorArcBound where
  arcCenter : ℚ
  arcRadius : ℚ
  majorArcEstimate : ℂ
  majorArcClosed : Prop

def majorArcBoundClosed (M : MajorArcBound) : Prop :=
  M.majorArcClosed

end WeylSumsCanonicalLaneLean
end HautevilleHouse