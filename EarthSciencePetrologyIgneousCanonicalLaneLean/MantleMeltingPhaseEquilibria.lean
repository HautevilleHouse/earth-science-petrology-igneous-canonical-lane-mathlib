import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MantleMeltingPackage where
  pressureRange : Prop
  temperatureRange : Prop
  solidusCurve : Prop
  liquidusCurve : Prop
  meltFraction : Prop

structure MantleMeltingEvidence (M : MantleMeltingPackage) where
  pressureRangeClosed : M.pressureRange
  temperatureRangeClosed : M.temperatureRange
  solidusCurveClosed : M.solidusCurve
  liquidusCurveClosed : M.liquidusCurve
  meltFractionClosed : M.meltFraction

def MantleMeltingClosed (M : MantleMeltingPackage) : Prop :=
  M.pressureRange ∧ M.temperatureRange ∧ M.solidusCurve ∧ M.liquidusCurve ∧ M.meltFraction

theorem mantle_melting_closed_from_evidence (M : MantleMeltingPackage) (E : MantleMeltingEvidence M) :
    MantleMeltingClosed M := by
  exact And.intro E.pressureRangeClosed (And.intro E.temperatureRangeClosed (And.intro E.solidusCurveClosed (And.intro E.liquidusCurveClosed E.meltFractionClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse