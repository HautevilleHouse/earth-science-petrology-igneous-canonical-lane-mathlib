import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MagmaChamberDifferentiationPackage where
  fractionalCrystallization : Prop
  magmaMixing : Prop
  assimilation : Prop
  liquidImmiscibility : Prop
  compositionalStratification : Prop

structure MagmaChamberDifferentiationEvidence (D : MagmaChamberDifferentiationPackage) where
  fractionalCrystallizationClosed : D.fractionalCrystallization
  magmaMixingClosed : D.magmaMixing
  assimilationClosed : D.assimilation
  liquidImmiscibilityClosed : D.liquidImmiscibility
  compositionalStratificationClosed : D.compositionalStratification

def MagmaChamberDifferentiationClosed (D : MagmaChamberDifferentiationPackage) : Prop :=
  D.fractionalCrystallization ∧ D.magmaMixing ∧ D.assimilation ∧ D.liquidImmiscibility ∧ D.compositionalStratification

theorem magma_chamber_differentiation_closed_from_evidence
    (D : MagmaChamberDifferentiationPackage) (E : MagmaChamberDifferentiationEvidence D) :
    MagmaChamberDifferentiationClosed D := by
  exact And.intro E.fractionalCrystallizationClosed (And.intro E.magmaMixingClosed (And.intro E.assimilationClosed (And.intro E.liquidImmiscibilityClosed E.compositionalStratificationClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse