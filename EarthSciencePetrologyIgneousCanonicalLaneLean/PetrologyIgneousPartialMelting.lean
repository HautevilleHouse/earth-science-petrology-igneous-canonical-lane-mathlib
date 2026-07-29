import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure PartialMeltingPackage where
  mantleSource : Prop
  meltFraction : Prop
  partitioningBehavior : Prop
  meltExtraction : Prop

structure PartialMeltingEvidence (P : PartialMeltingPackage) where
  mantleSourceClosed : P.mantleSource
  meltFractionClosed : P.meltFraction
  partitioningBehaviorClosed : P.partitioningBehavior
  meltExtractionClosed : P.meltExtraction

def PartialMeltingClosed (P : PartialMeltingPackage) : Prop :=
  P.mantleSource ∧ P.meltFraction ∧ P.partitioningBehavior ∧ P.meltExtraction

theorem partial_melting_closed_from_evidence (P : PartialMeltingPackage) (E : PartialMeltingEvidence P) :
    PartialMeltingClosed P := by
  exact And.intro E.mantleSourceClosed (And.intro E.meltFractionClosed (And.intro E.partitioningBehaviorClosed E.meltExtractionClosed))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse
