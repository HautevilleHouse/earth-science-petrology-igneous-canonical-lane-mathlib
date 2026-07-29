import IgneousPetrologyCanonicalLaneLean.PartialMeltingModel

namespace HautevilleHouse
namespace IgneousPetrologyCanonicalLaneLean

structure IgneousDifferentiationPackage {M : MagmaThermodynamicsPackage} {P : PartialMeltingModelPackage M} where
  fractionalCrystallization : Prop
  magmaMixing : Prop
  assimilation : Prop
  liquidImmiscibility : Prop
  crystalSettling : Prop
  compositionalEvolution : Type u
  fractionalCrystallizationClosed : fractionalCrystallization
  magmaMixingClosed : magmaMixing
  assimilationClosed : assimilation
  liquidImmiscibilityClosed : liquidImmiscibility
  crystalSettlingClosed : crystalSettling

structure IgneousDifferentiationEvidence {M : MagmaThermodynamicsPackage} {P : PartialMeltingModelPackage M} (D : IgneousDifferentiationPackage M P) where
  fractionalCrystallizationClosed : D.fractionalCrystallization
  magmaMixingClosed : D.magmaMixing
  assimilationClosed : D.assimilation
  liquidImmiscibilityClosed : D.liquidImmiscibility
  crystalSettlingClosed : D.crystalSettling
  compositionalEvolutionClosed : D.compositionalEvolution

def IgneousDifferentiationClosed {M : MagmaThermodynamicsPackage} {P : PartialMeltingModelPackage M} (D : IgneousDifferentiationPackage M P) : Prop :=
  D.fractionalCrystallization ∧ D.magmaMixing ∧ D.assimilation ∧ D.liquidImmiscibility ∧ D.crystalSettling ∧ D.compositionalEvolution

theorem igneous_differentiation_closed_from_evidence {M : MagmaThermodynamicsPackage} {P : PartialMeltingModelPackage M} (D : IgneousDifferentiationPackage M P) (E : IgneousDifferentiationEvidence D) :
    IgneousDifferentiationClosed D := by
  exact And.intro E.fractionalCrystallizationClosed
    (And.intro E.magmaMixingClosed
      (And.intro E.assimilationClosed
        (And.intro E.liquidImmiscibilityClosed
          (And.intro E.crystalSettlingClosed E.compositionalEvolutionClosed))))

end IgneousPetrologyCanonicalLaneLean
end HautevilleHouse