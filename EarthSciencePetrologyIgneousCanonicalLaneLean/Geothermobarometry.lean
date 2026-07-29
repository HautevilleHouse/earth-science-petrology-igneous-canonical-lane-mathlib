import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure GeothermobarometerPackage where
  calibration : Type u
  pressureEquation : ℝ → ℝ → ℝ
  temperatureEquation : ℝ → ℝ → ℝ
  equilibriumConstant : ℝ → ℝ
  uncertainty : ℝ
  applicableRangeP : ℝ × ℝ
  applicableRangeT : ℝ × ℝ
  mineralPair : String × String
  validForMafic : Bool
  validForFelsic : Bool

structure GeothermobarometerEvidence (G : GeothermobarometerPackage) where
  calibrationClosed : G.calibration
  equilibriumConstantClosed : G.equilibriumConstant
  uncertaintyBound : G.uncertainty > 0

def GeothermobarometerClosed (G : GeothermobarometerPackage) : Prop :=
  G.calibration ∧ G.equilibriumConstant ∧ G.uncertainty > 0

theorem geothermobarometer_closed_from_evidence (G : GeothermobarometerPackage)
    (E : GeothermobarometerEvidence G) : GeothermobarometerClosed G := by
  exact And.intro E.calibrationClosed
    (And.intro E.equilibriumConstantClosed E.uncertaintyBound)

structure ThermobarometryResult where
  pressure : ℝ
  temperature : ℝ
  depth : ℝ
  uncertaintyP : ℝ
  uncertaintyT : ℝ
  methodUsed : String
  resultConsistent : Prop

def ResultConsistent (R : ThermobarometryResult) : Prop :=
  R.uncertaintyP < 0.1 ∧ R.uncertaintyT < 50

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse