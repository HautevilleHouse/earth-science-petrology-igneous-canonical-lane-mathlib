import IgneousPetrologyCanonicalLaneLean.MagmaThermodynamics

namespace HautevilleHouse
namespace IgneousPetrologyCanonicalLaneLean

structure PartialMeltingModelPackage {M : MagmaThermodynamicsPackage} where
  sourceRock : Type u
  sourceMineralogy : Type v
  meltComposition : Type w
  degreeOfMelting : ℝ → Prop
  modalBatchMelting : Prop
  nonModalBatchMelting : Prop
  fractionalMelting : Prop
  traceElementPartitioning : Prop
  sourceMineralogyClosed : sourceMineralogy
  meltCompositionClosed : meltComposition
  degreeOfMeltingClosed : ∀ T : ℝ, degreeOfMelting T → MeltFractionModelClosed

structure PartialMeltingModelEvidence {M : MagmaThermodynamicsPackage} (P : PartialMeltingModelPackage M) where
  modalBatchMeltingClosed : P.modalBatchMelting
  nonModalBatchMeltingClosed : P.nonModalBatchMelting
  fractionalMeltingClosed : P.fractionalMelting
  traceElementPartitioningClosed : P.traceElementPartitioning

def PartialMeltingModelClosed {M : MagmaThermodynamicsPackage} (P : PartialMeltingModelPackage M) : Prop :=
  P.modalBatchMelting ∧ P.nonModalBatchMelting ∧ P.fractionalMelting ∧ P.traceElementPartitioning

theorem partial_melting_model_closed_from_evidence {M : MagmaThermodynamicsPackage} (P : PartialMeltingModelPackage M) (E : PartialMeltingModelEvidence P) :
    PartialMeltingModelClosed P := by
  exact And.intro E.modalBatchMeltingClosed
    (And.intro E.nonModalBatchMeltingClosed
      (And.intro E.fractionalMeltingClosed E.traceElementPartitioningClosed))

end IgneousPetrologyCanonicalLaneLean
end HautevilleHouse