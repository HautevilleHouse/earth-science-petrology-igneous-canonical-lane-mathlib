import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure VolcanicEruptionDynamicsPackage where
  magmaAscentRate : Prop
  degassingProcess : Prop
  fragmentationThreshold : Prop
  eruptionColumnHeight : Prop
  lavaFlowRheology : Prop

structure VolcanicEruptionDynamicsEvidence (V : VolcanicEruptionDynamicsPackage) where
  magmaAscentRateClosed : V.magmaAscentRate
  degassingProcessClosed : V.degassingProcess
  fragmentationThresholdClosed : V.fragmentationThreshold
  eruptionColumnHeightClosed : V.eruptionColumnHeight
  lavaFlowRheologyClosed : V.lavaFlowRheology

def VolcanicEruptionDynamicsClosed (V : VolcanicEruptionDynamicsPackage) : Prop :=
  V.magmaAscentRate ∧ V.degassingProcess ∧ V.fragmentationThreshold ∧ V.eruptionColumnHeight ∧ V.lavaFlowRheology

theorem volcanic_eruption_dynamics_closed_from_evidence
    (V : VolcanicEruptionDynamicsPackage) (E : VolcanicEruptionDynamicsEvidence V) :
    VolcanicEruptionDynamicsClosed V := by
  exact And.intro E.magmaAscentRateClosed (And.intro E.degassingProcessClosed (And.intro E.fragmentationThresholdClosed (And.intro E.eruptionColumnHeightClosed E.lavaFlowRheologyClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse