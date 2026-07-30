import WeylSumsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WeylSumsCanonicalLaneLean

structure AdmissibleClass where
  object : WeylSumsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WeylSumsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeylSumsCanonicalLaneLean
end HautevilleHouse
