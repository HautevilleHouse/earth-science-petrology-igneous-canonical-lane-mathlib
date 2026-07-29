import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure PrimitiveIgneousRock where
  location : Type u
  mineralAssemblage : Type v
  texture : Type w
  chemicalComposition : Type x
  crystallizationDepth : Prop
  coolingRate : Prop
  partialMeltFraction : Prop
  crystallizationDepthTerm : crystallizationDepth
  coolingRateTerm : coolingRate
  partialMeltFractionTerm : partialMeltFraction

structure PrimitiveMagmaChamber where
  depth : ℝ
  volume : ℝ
  temperature : ℝ
  pressure : ℝ
  composition : Type u
  mushZoneFraction : ℝ
  solidificationTime : ℝ
  depthTerm : depth > 0
  volumeTerm : volume > 0
  temperatureTerm : temperature > 1000

structure PrimitivePhaseDiagram where
  solidus : ℝ → ℝ
  liquidus : ℝ → ℝ
  eutecticPoint : ℝ × ℝ
  peritecticPoint : ℝ × ℝ
  solidusSmooth : Prop
  liquidusSmooth : Prop
  eutecticStable : Prop
  peritecticMetastable : Prop
  solidusSmoothTerm : solidusSmooth
  liquidusSmoothTerm : liquidusSmooth
  eutecticStableTerm : eutecticStable
  peritecticMetastableTerm : peritecticMetastable

structure PrimitiveCrystallizationSequence where
  order : List String
  temperatureRange : ℝ → ℝ → Prop
  reactionSeries : List (String × String)
  orderDetermined : Prop
  temperatureRangeConsistent : Prop
  reactionSeriesComplete : Prop
  orderDeterminedTerm : orderDetermined
  temperatureRangeConsistentTerm : temperatureRangeConsistent
  reactionSeriesCompleteTerm : reactionSeriesComplete

structure PrimitiveGeothermobarometer where
  pressureSensitiveReaction : Type u
  temperatureSensitiveReaction : Type v
  calibrationEquation : Type w
  uncertainty : ℝ
  pressureRange : ℝ × ℝ
  temperatureRange : ℝ × ℝ
  calibrationValid : Prop
  uncertaintyBound : Prop
  calibrationValidTerm : calibrationValid
  uncertaintyBoundTerm : uncertaintyBound

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse