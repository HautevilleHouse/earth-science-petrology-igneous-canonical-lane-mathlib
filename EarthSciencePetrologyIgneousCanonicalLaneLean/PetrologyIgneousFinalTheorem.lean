import canonicalLaneMathlib.AdmissibleClass
import PetrologyIgneousCanonicalLaneLean.PetrologyIgneousBridgeLemmas
import PetrologyIgneousCanonicalLaneLean.PetrologyIgneousGateLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

def ConstrainedIgneousPetrologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_igneous_petrology_endgame (A : AdmissibleClass) :
    ConstrainedIgneousPetrologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
