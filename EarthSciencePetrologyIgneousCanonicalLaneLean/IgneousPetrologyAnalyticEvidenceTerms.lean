import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure MeltGenerationEvidenceTerms {A : AdmissibleClass}
    (C : MeltGenerationAnalyticCertificate A) where
  decompressionMelting : C.decompressionMelting
  fluxMelting : C.fluxMelting
  heatTransfer : C.heatTransfer
  meltExtraction : C.meltExtraction
  meltGenerationClosed : MeltGenerationClosed A

def MeltGenerationAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : MeltGenerationAnalyticCertificate A) : MeltGenerationEvidenceTerms C :=
  {
    decompressionMelting := C.decompressionMeltingClosed
    fluxMelting := C.fluxMeltingClosed
    heatTransfer := C.heatTransferClosed
    meltExtraction := C.meltExtractionClosed
    meltGenerationClosed := melt_generation_closed_from_evidence A C.meltGenerationEvidence
  }

structure CrystallizationEvidenceTerms {A : AdmissibleClass}
    (C : CrystallizationAnalyticCertificate A) where
  nucleationRate : C.nucleationRate
  crystalGrowth : C.crystalGrowth
  fractionation : C.fractionation
  crystallizationClosed : CrystallizationClosed A

def CrystallizationAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : CrystallizationAnalyticCertificate A) : CrystallizationEvidenceTerms C :=
  {
    nucleationRate := C.nucleationRateClosed
    crystalGrowth := C.crystalGrowthClosed
    fractionation := C.fractionationClosed
    crystallizationClosed := crystallization_closed_from_evidence A C.crystallizationEvidence
  }

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse