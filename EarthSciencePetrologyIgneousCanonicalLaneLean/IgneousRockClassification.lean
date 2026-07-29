import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousRockClassificationPackage where
  silicaContent : Prop
  mineralAssemblage : Prop
  texture : Prop
  tectonicSetting : Prop
  iugsApproved : Prop

structure IgneousRockClassificationEvidence (C : IgneousRockClassificationPackage) where
  silicaContentClosed : C.silicaContent
  mineralAssemblageClosed : C.mineralAssemblage
  textureClosed : C.texture
  tectonicSettingClosed : C.tectonicSetting
  iugsApprovedClosed : C.iugsApproved

def IgneousRockClassificationClosed (C : IgneousRockClassificationPackage) : Prop :=
  C.silicaContent ∧ C.mineralAssemblage ∧ C.texture ∧ C.tectonicSetting ∧ C.iugsApproved

theorem igneous_rock_classification_closed_from_evidence
    (C : IgneousRockClassificationPackage) (E : IgneousRockClassificationEvidence C) :
    IgneousRockClassificationClosed C := by
  exact And.intro E.silicaContentClosed
    (And.intro E.mineralAssemblageClosed
      (And.intro E.textureClosed
        (And.intro E.tectonicSettingClosed E.iugsApprovedClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse