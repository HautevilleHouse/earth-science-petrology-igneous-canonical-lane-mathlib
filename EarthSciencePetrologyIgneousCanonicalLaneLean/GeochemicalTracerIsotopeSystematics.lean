import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure GeochemicalTracerIsotopeSystematicsPackage where
  radiogenicIsotopeRatios : Prop
  stableIsotopeFractionation : Prop
  traceElementPartitioning : Prop
  mantleSourceHeterogeneity : Prop
  crustalContamination : Prop

structure GeochemicalTracerIsotopeSystematicsEvidence (G : GeochemicalTracerIsotopeSystematicsPackage) where
  radiogenicIsotopeRatiosClosed : G.radiogenicIsotopeRatios
  stableIsotopeFractionationClosed : G.stableIsotopeFractionation
  traceElementPartitioningClosed : G.traceElementPartitioning
  mantleSourceHeterogeneityClosed : G.mantleSourceHeterogeneity
  crustalContaminationClosed : G.crustalContamination

def GeochemicalTracerIsotopeSystematicsClosed (G : GeochemicalTracerIsotopeSystematicsPackage) : Prop :=
  G.radiogenicIsotopeRatios ∧ G.stableIsotopeFractionation ∧ G.traceElementPartitioning ∧ G.mantleSourceHeterogeneity ∧ G.crustalContamination

theorem geochemical_tracer_isotope_systematics_closed_from_evidence
    (G : GeochemicalTracerIsotopeSystematicsPackage) (E : GeochemicalTracerIsotopeSystematicsEvidence G) :
    GeochemicalTracerIsotopeSystematicsClosed G := by
  exact And.intro E.radiogenicIsotopeRatiosClosed (And.intro E.stableIsotopeFractionationClosed (And.intro E.traceElementPartitioningClosed (And.intro E.mantleSourceHeterogeneityClosed E.crustalContaminationClosed)))

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse