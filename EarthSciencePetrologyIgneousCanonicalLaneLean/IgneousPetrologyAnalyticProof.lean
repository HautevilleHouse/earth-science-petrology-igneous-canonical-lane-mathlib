import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MeltGenerationAnalyticCertificate (A : AdmissibleClass) where
  decompressionMelting : Prop
  fluxMelting : Prop
  heatTransfer : Prop
  meltExtraction : Prop
  decompressionMeltingClosed : decompressionMelting
  fluxMeltingClosed : fluxMelting
  heatTransferClosed : heatTransfer
  meltExtractionClosed : meltExtraction
  meltGenerationEvidence : MeltGenerationEvidence A

def MeltGenerationAnalyticCertificateClosed {A : AdmissibleClass}
    (C : MeltGenerationAnalyticCertificate A) : Prop :=
  C.decompressionMelting ∧ C.fluxMelting ∧ C.heatTransfer ∧ C.meltExtraction ∧ MeltGenerationClosed A

theorem melt_generation_analytic_certificate_closed
    {A : AdmissibleClass} (C : MeltGenerationAnalyticCertificate A) :
    MeltGenerationAnalyticCertificateClosed C := by
  exact And.intro C.decompressionMeltingClosed
    (And.intro C.fluxMeltingClosed
      (And.intro C.heatTransferClosed
        (And.intro C.meltExtractionClosed
          (melt_generation_closed_from_evidence A C.meltGenerationEvidence))))

structure CrystallizationAnalyticCertificate (A : AdmissibleClass) where
  nucleationRate : Prop
  crystalGrowth : Prop
  fractionation : Prop
  nucleationRateClosed : nucleationRate
  crystalGrowthClosed : crystalGrowth
  fractionationClosed : fractionation
  crystallizationEvidence : CrystallizationEvidence A

def CrystallizationAnalyticCertificateClosed {A : AdmissibleClass}
    (C : CrystallizationAnalyticCertificate A) : Prop :=
  C.nucleationRate ∧ C.crystalGrowth ∧ C.fractionation ∧ CrystallizationClosed A

theorem crystallization_analytic_certificate_closed
    {A : AdmissibleClass} (C : CrystallizationAnalyticCertificate A) :
    CrystallizationAnalyticCertificateClosed C := by
  exact And.intro C.nucleationRateClosed
    (And.intro C.crystalGrowthClosed
      (And.intro C.fractionationClosed
        (crystallization_closed_from_evidence A C.crystallizationEvidence)))

structure MagmaTransportAnalyticCertificate (A : AdmissibleClass) where
  ascentMechanism : Prop
  crustalStorage : Prop
  eruptionTrigger : Prop
  ascentMechanismClosed : ascentMechanism
  crustalStorageClosed : crustalStorage
  eruptionTriggerClosed : eruptionTrigger
  magmaTransportEvidence : MagmaTransportEvidence A

def MagmaTransportAnalyticCertificateClosed {A : AdmissibleClass}
    (C : MagmaTransportAnalyticCertificate A) : Prop :=
  C.ascentMechanism ∧ C.crustalStorage ∧ C.eruptionTrigger ∧ MagmaTransportClosed A

theorem magma_transport_analytic_certificate_closed
    {A : AdmissibleClass} (C : MagmaTransportAnalyticCertificate A) :
    MagmaTransportAnalyticCertificateClosed C := by
  exact And.intro C.ascentMechanismClosed
    (And.intro C.crustalStorageClosed
      (And.intro C.eruptionTriggerClosed
        (magma_transport_closed_from_evidence A C.magmaTransportEvidence)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse