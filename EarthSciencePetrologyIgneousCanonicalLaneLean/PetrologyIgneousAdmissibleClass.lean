import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure RockAdmittedObject where
  rockType : String
  composition : Prop
  texture : Prop
  mineralAssemblage : Prop
  conclusion : composition ∧ texture ∧ mineralAssemblage

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
