import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure PhaseEquilibriaPackage where
  phaseDiagram : Type u
  solidusCurve : Prop
  liquidusCurve : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop
  invariantPoints : Prop
  meltComposition : Prop
  solidSolution : Prop

structure PhaseEquilibriaEvidence (P : PhaseEquilibriaPackage) where
  solidusCurveClosed : P.solidusCurve
  liquidusCurveClosed : P.liquidusCurve
  eutecticPointClosed : P.eutecticPoint
  peritecticPointClosed : P.peritecticPoint
  invariantPointsClosed : P.invariantPoints
  meltCompositionClosed : P.meltComposition
  solidSolutionClosed : P.solidSolution

def PhaseEquilibriaClosed (P : PhaseEquilibriaPackage) : Prop :=
  P.solidusCurve ∧ P.liquidusCurve ∧ P.eutecticPoint ∧
  P.peritecticPoint ∧ P.invariantPoints ∧ P.meltComposition ∧ P.solidSolution

theorem phase_equilibria_closed_from_evidence (P : PhaseEquilibriaPackage)
    (E : PhaseEquilibriaEvidence P) : PhaseEquilibriaClosed P := by
  exact And.intro E.solidusCurveClosed
    (And.intro E.liquidusCurveClosed
      (And.intro E.eutecticPointClosed
        (And.intro E.peritecticPointClosed
          (And.intro E.invariantPointsClosed
            (And.intro E.meltCompositionClosed E.solidSolutionClosed)))))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse