import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousTextureCrystallizationPackage where
  nucleationRate : Prop
  crystalGrowthRate : Prop
  coolingRate : Prop
  grainSizeDistribution : Prop
  porphyriticTexture : Prop

structure IgneousTextureCrystallizationEvidence (T : IgneousTextureCrystallizationPackage) where
  nucleationRateClosed : T.nucleationRate
  crystalGrowthRateClosed : T.crystalGrowthRate
  coolingRateClosed : T.coolingRate
  grainSizeDistributionClosed : T.grainSizeDistribution
  porphyriticTextureClosed : T.porphyriticTexture

def IgneousTextureCrystallizationClosed (T : IgneousTextureCrystallizationPackage) : Prop :=
  T.nucleationRate ∧ T.crystalGrowthRate ∧ T.coolingRate ∧ T.grainSizeDistribution ∧ T.porphyriticTexture

theorem igneous_texture_crystallization_closed_from_evidence
    (T : IgneousTextureCrystallizationPackage) (E : IgneousTextureCrystallizationEvidence T) :
    IgneousTextureCrystallizationClosed T := by
  exact And.intro E.nucleationRateClosed (And.intro E.crystalGrowthRateClosed (And.intro E.coolingRateClosed (And.intro E.grainSizeDistributionClosed E.porphyriticTextureClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse