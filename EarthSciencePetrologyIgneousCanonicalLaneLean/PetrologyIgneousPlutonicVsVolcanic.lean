import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure PlutonicVsVolcanicPackage where
  coolingRate : Prop
  crystalSizeDistinction : Prop
  intrusiveTexture : Prop
  extrusiveTexture : Prop

structure PlutonicVsVolcanicEvidence (P : PlutonicVsVolcanicPackage) where
  coolingRateClosed : P.coolingRate
  crystalSizeDistinctionClosed : P.crystalSizeDistinction
  intrusiveTextureClosed : P.intrusiveTexture
  extrusiveTextureClosed : P.extrusiveTexture

def PlutonicVsVolcanicClosed (P : PlutonicVsVolcanicPackage) : Prop :=
  P.coolingRate ∧ P.crystalSizeDistinction ∧ P.intrusiveTexture ∧ P.extrusiveTexture

theorem plutonic_vs_volcanic_closed_from_evidence (P : PlutonicVsVolcanicPackage) (E : PlutonicVsVolcanicEvidence P) :
    PlutonicVsVolcanicClosed P := by
  exact And.intro E.coolingRateClosed (And.intro E.crystalSizeDistinctionClosed (And.intro E.intrusiveTextureClosed E.extrusiveTextureClosed))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
