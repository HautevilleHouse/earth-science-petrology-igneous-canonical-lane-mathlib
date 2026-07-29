import IgneousPetrologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace IgneousPetrologyCanonicalLaneLean

def ConstrainedIgneousClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_igneous_endgame (A : AdmissibleClass) :
    ConstrainedIgneousClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end IgneousPetrologyCanonicalLaneLean
end HautevilleHouse