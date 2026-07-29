import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure TectonicSettingPackage where
  plateBoundaryType : String
  magmaSource : String
  crustalContamination : Prop
  fractionalCrystallization : Prop
  assimilation : Prop
  traceElementPatterns : Prop
  isotopicSignatures : Prop
  discriminationDiagrams : Prop

structure TectonicSettingEvidence (T : TectonicSettingPackage) where
  crustalContaminationClosed : T.crustalContamination
  fractionalCrystallizationClosed : T.fractionalCrystallization
  assimilationClosed : T.assimilation
  traceElementPatternsClosed : T.traceElementPatterns
  isotopicSignaturesClosed : T.isotopicSignatures
  discriminationDiagramsClosed : T.discriminationDiagrams

def TectonicSettingClosed (T : TectonicSettingPackage) : Prop :=
  T.crustalContamination ∧ T.fractionalCrystallization ∧ T.assimilation ∧
  T.traceElementPatterns ∧ T.isotopicSignatures ∧ T.discriminationDiagrams

theorem tectonic_setting_closed_from_evidence (T : TectonicSettingPackage)
    (E : TectonicSettingEvidence T) : TectonicSettingClosed T := by
  exact And.intro E.crustalContaminationClosed
    (And.intro E.fractionalCrystallizationClosed
      (And.intro E.assimilationClosed
        (And.intro E.traceElementPatternsClosed
          (And.intro E.isotopicSignaturesClosed E.discriminationDiagramsClosed))))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse