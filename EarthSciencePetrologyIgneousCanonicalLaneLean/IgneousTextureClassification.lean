import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousTexturePackage where
  grainSize : Type u
  crystalShape : Type v
  fabric : Type w
  coolingRateInferred : Prop
  nucleationDensity : Prop
  growthRate : Prop
  textureType : String
  phenocrystPresent : Bool
  groundmassTexture : String

structure IgneousTextureEvidence (T : IgneousTexturePackage) where
  coolingRateInferredClosed : T.coolingRateInferred
  nucleationDensityClosed : T.nucleationDensity
  growthRateClosed : T.growthRate

def IgneousTextureClosed (T : IgneousTexturePackage) : Prop :=
  T.coolingRateInferred ∧ T.nucleationDensity ∧ T.growthRate

theorem igneous_texture_closed_from_evidence (T : IgneousTexturePackage)
    (E : IgneousTextureEvidence T) : IgneousTextureClosed T := by
  exact And.intro E.coolingRateInferredClosed
    (And.intro E.nucleationDensityClosed E.growthRateClosed)

structure CrystallizationKineticsPackage where
  nucleationRate : ℝ → ℝ
  growthRateFunc : ℝ → ℝ
  avramiEquation : Prop
  crystalSizeDistribution : Prop
  undercooling : ℝ
  avramiEquationClosed : avramiEquation
  crystalSizeDistributionClosed : crystalSizeDistribution

def CrystallizationKineticsClosed (K : CrystallizationKineticsPackage) : Prop :=
  K.avramiEquation ∧ K.crystalSizeDistribution

theorem crystallization_kinetics_closed_from_evidence
    (K : CrystallizationKineticsPackage)
    (E : {x : Prop // x = K.avramiEquation ∧ x = K.crystalSizeDistribution}) :
    CrystallizationKineticsClosed K := by
  exact And.intro (E.2.1) (E.2.2)

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse