import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousAdmittedObject where
  rockSystem : Type
  petrologicFramework : Type
  meltingProcess : Prop
  crystallizationPath : Prop
  phaseEquilibria : Prop
  magmaEvolution : Prop
  conclusion : magmaEvolution

structure AdmissibleClass where
  object : IgneousAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IgneousWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse