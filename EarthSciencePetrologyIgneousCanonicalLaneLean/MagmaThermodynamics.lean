import IgneousPetrologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace IgneousPetrologyCanonicalLaneLean

structure MagmaThermodynamicsPackage where
  temperature : ℝ
  pressure : ℝ
  composition : Type u
  phaseAssemblage : Type v
  entropyFunctional : Type w
  gibbsFreeEnergy : Type x
  clapeyronSlope : Prop
  latentHeat : Prop
  liquidusSurface : Prop
  solidusSurface : Prop
  meltFraction : ℝ → Prop
  thermalCapacity : Prop

structure MagmaThermodynamicsEvidence (M : MagmaThermodynamicsPackage) where
  clapeyronSlopeClosed : M.clapeyronSlope
  latentHeatClosed : M.latentHeat
  liquidusSurfaceClosed : M.liquidusSurface
  solidusSurfaceClosed : M.solidusSurface
  meltFractionClosed : ∀ T : ℝ, M.meltFraction T
  thermalCapacityClosed : M.thermalCapacity

def MagmaThermodynamicsClosed (M : MagmaThermodynamicsPackage) : Prop :=
  M.clapeyronSlope ∧ M.latentHeat ∧ M.liquidusSurface ∧ M.solidusSurface ∧
  (∀ T : ℝ, M.meltFraction T) ∧ M.thermalCapacity

theorem magma_thermodynamics_closed_from_evidence (M : MagmaThermodynamicsPackage) (E : MagmaThermodynamicsEvidence M) :
    MagmaThermodynamicsClosed M := by
  exact And.intro E.clapeyronSlopeClosed
    (And.intro E.latentHeatClosed
      (And.intro E.liquidusSurfaceClosed
        (And.intro E.solidusSurfaceClosed
          (And.intro E.meltFractionClosed E.thermalCapacityClosed))))

end IgneousPetrologyCanonicalLaneLean
end HautevilleHouse