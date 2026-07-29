import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace IgneousPetrologyCanonicalLaneLean

structure AdmissibleClass where
  object : MagmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MagmaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end IgneousPetrologyCanonicalLaneLean
end HautevilleHouse