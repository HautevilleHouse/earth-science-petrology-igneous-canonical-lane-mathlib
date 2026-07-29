import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologyIgneousCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "earth-science-petrology-igneous-canonical-lane",
    theoremName := "IgneousPetrologyConstrainedTheorem",
    theoremObject := "IgneousSystemClosure",
    classicalBoundary := "Magma processes remain open outside the admitted class.",
    manifoldConstrainedStatement := "Igneous petrology constrained through phase equilibria and magma evolution.",
    certificateLane := "igneous_constrained",
    carriedRemainder := "Unrestricted classical magma dynamics carried as formalization boundary."
  }

end EarthSciencePetrologyIgneousCanonicalLaneLean
end HautevilleHouse