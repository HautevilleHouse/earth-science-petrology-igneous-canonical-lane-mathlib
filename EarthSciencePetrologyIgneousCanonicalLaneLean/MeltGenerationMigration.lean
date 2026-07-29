import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MeltGenerationPackage where
  partialMelting : Prop
  decompressionMelting : Prop
  fluxMelting : Prop
  heatTransfer : Prop
  meltFraction : ℝ → ℝ
  sourceRock : Type u
  meltExtraction : Prop

structure MeltMigrationPackage where
  porosityWaves : Prop
  dikePropagation : Prop
  channelizedFlow : Prop
  permeabilty : ℝ → ℝ
  meltVelocity : Type u
  magmaAccumulation : Prop

structure MeltGenerationEvidence (G : MeltGenerationPackage) where
  partialMeltingClosed : G.partialMelting
  decompressionMeltingClosed : G.decompressionMelting
  fluxMeltingClosed : G.fluxMelting
  heatTransferClosed : G.heatTransfer
  meltExtractionClosed : G.meltExtraction

def MeltGenerationClosed (G : MeltGenerationPackage) : Prop :=
  G.partialMelting ∧ G.decompressionMelting ∧ G.fluxMelting ∧
  G.heatTransfer ∧ G.meltExtraction

theorem melt_generation_closed_from_evidence (G : MeltGenerationPackage)
    (E : MeltGenerationEvidence G) : MeltGenerationClosed G := by
  exact And.intro E.partialMeltingClosed
    (And.intro E.decompressionMeltingClosed
      (And.intro E.fluxMeltingClosed
        (And.intro E.heatTransferClosed E.meltExtractionClosed)))

structure MeltMigrationEvidence (M : MeltMigrationPackage) where
  porosityWavesClosed : M.porosityWaves
  dikePropagationClosed : M.dikePropagation
  channelizedFlowClosed : M.channelizedFlow
  magmaAccumulationClosed : M.magmaAccumulation

def MeltMigrationClosed (M : MeltMigrationPackage) : Prop :=
  M.porosityWaves ∧ M.dikePropagation ∧ M.channelizedFlow ∧ M.magmaAccumulation

theorem melt_migration_closed_from_evidence (M : MeltMigrationPackage)
    (E : MeltMigrationEvidence M) : MeltMigrationClosed M := by
  exact And.intro E.porosityWavesClosed
    (And.intro E.dikePropagationClosed
      (And.intro E.channelizedFlowClosed E.magmaAccumulationClosed))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse