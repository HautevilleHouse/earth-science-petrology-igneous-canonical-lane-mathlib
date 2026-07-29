import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure TectonicSettingPackage where
  convergentMargin : Prop
  divergentMargin : Prop
  intraplateHotspot : Prop
  magmaticArc : Prop

structure TectonicSettingEvidence (T : TectonicSettingPackage) where
  convergentMarginClosed : T.convergentMargin
  divergentMarginClosed : T.divergentMargin
  intraplateHotspotClosed : T.intraplateHotspot
  magmaticArcClosed : T.magmaticArc

def TectonicSettingClosed (T : TectonicSettingPackage) : Prop :=
  T.convergentMargin ∧ T.divergentMargin ∧ T.intraplateHotspot ∧ T.magmaticArc

theorem tectonic_setting_closed_from_evidence (T : TectonicSettingPackage) (E : TectonicSettingEvidence T) :
    TectonicSettingClosed T := by
  exact And.intro E.convergentMarginClosed (And.intro E.divergentMarginClosed (And.intro E.intraplateHotspotClosed E.magmaticArcClosed))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
