import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure PhaseEquilibriumPackage (A : AdmissibleClass) where
  solidusTemperature : Prop
  liquidusTemperature : Prop
  phaseBoundaries : Prop
  noncollapsingCompositionRange : Prop

structure PhaseEquilibriumEvidence {A : AdmissibleClass} (P : PhaseEquilibriumPackage A) where
  solidusTemperatureClosed : P.solidusTemperature
  liquidusTemperatureClosed : P.liquidusTemperature
  phaseBoundariesClosed : P.phaseBoundaries
  noncollapsingCompositionRangeClosed : P.noncollapsingCompositionRange

def PhaseEquilibriumClosed {A : AdmissibleClass} (P : PhaseEquilibriumPackage A) : Prop :=
  P.solidusTemperature ∧ P.liquidusTemperature ∧ P.phaseBoundaries ∧ P.noncollapsingCompositionRange

theorem phase_equilibrium_closed_from_evidence
    {A : AdmissibleClass} (P : PhaseEquilibriumPackage A) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.solidusTemperatureClosed
    (And.intro E.liquidusTemperatureClosed
      (And.intro E.phaseBoundariesClosed E.noncollapsingCompositionRangeClosed))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse