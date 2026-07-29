import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousRock where
  texture : String
  mineralogy : List String
  silicaContent : Float

structure MagmaSource where
  depth_km : Float
  composition : String

structure IgneousAdmittedObject where
  rock : IgneousRock
  magmaSource : MagmaSource
  classificationConfirmed : Prop
  petrogeneticModel : Prop
  conclusion : classificationConfirmed ∧ petrogeneticModel

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse