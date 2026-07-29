import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MagmaCrystallizationPackage where
  magmaSource : Type
  solidus : Prop
  liquidus : Prop
  fractionalCrystallization : Prop

structure MagmaCrystallizationEvidence (M : MagmaCrystallizationPackage) where
  solidusClosed : M.solidus
  liquidusClosed : M.liquidus
  fractionalCrystallizationClosed : M.fractionalCrystallization

def MagmaCrystallizationClosed (M : MagmaCrystallizationPackage) : Prop :=
  M.solidus ∧ M.liquidus ∧ M.fractionalCrystallization

theorem magma_crystallization_closed_from_evidence (M : MagmaCrystallizationPackage) (E : MagmaCrystallizationEvidence M) :
    MagmaCrystallizationClosed M := by
  exact And.intro E.solidusClosed (And.intro E.liquidusClosed E.fractionalCrystallizationClosed)

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
