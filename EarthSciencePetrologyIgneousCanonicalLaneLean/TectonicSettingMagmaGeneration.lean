import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure TectonicSettingMagmaGenerationPackage where
  divergentBoundary : Prop
  convergentBoundary : Prop
  intraplateHotspot : Prop
  subductionZoneFluxMelting : Prop
  decompressionMelting : Prop

structure TectonicSettingMagmaGenerationEvidence (S : TectonicSettingMagmaGenerationPackage) where
  divergentBoundaryClosed : S.divergentBoundary
  convergentBoundaryClosed : S.convergentBoundary
  intraplateHotspotClosed : S.intraplateHotspot
  subductionZoneFluxMeltingClosed : S.subductionZoneFluxMelting
  decompressionMeltingClosed : S.decompressionMelting

def TectonicSettingMagmaGenerationClosed (S : TectonicSettingMagmaGenerationPackage) : Prop :=
  S.divergentBoundary ∧ S.convergentBoundary ∧ S.intraplateHotspot ∧ S.subductionZoneFluxMelting ∧ S.decompressionMelting

theorem tectonic_setting_magma_generation_closed_from_evidence
    (S : TectonicSettingMagmaGenerationPackage) (E : TectonicSettingMagmaGenerationEvidence S) :
    TectonicSettingMagmaGenerationClosed S := by
  exact And.intro E.divergentBoundaryClosed (And.intro E.convergentBoundaryClosed (And.intro E.intraplateHotspotClosed (And.intro E.subductionZoneFluxMeltingClosed E.decompressionMeltingClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse