import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure IgneousPetrogenesisPackage where
  magmaSource : Prop
  partialMelting : Prop
  fractionalCrystallization : Prop
  magmaMixing : Prop
  crustalContamination : Prop

structure IgneousPetrogenesisEvidence (P : IgneousPetrogenesisPackage) where
  magmaSourceClosed : P.magmaSource
  partialMeltingClosed : P.partialMelting
  fractionalCrystallizationClosed : P.fractionalCrystallization
  magmaMixingClosed : P.magmaMixing
  crustalContaminationClosed : P.crustalContamination

def IgneousPetrogenesisClosed (P : IgneousPetrogenesisPackage) : Prop :=
  P.magmaSource ∧ P.partialMelting ∧ P.fractionalCrystallization ∧ P.magmaMixing ∧ P.crustalContamination

theorem igneous_petrogenesis_closed_from_evidence
    (P : IgneousPetrogenesisPackage) (E : IgneousPetrogenesisEvidence P) :
    IgneousPetrogenesisClosed P := by
  exact And.intro E.magmaSourceClosed
    (And.intro E.partialMeltingClosed
      (And.intro E.fractionalCrystallizationClosed
        (And.intro E.magmaMixingClosed E.crustalContaminationClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse