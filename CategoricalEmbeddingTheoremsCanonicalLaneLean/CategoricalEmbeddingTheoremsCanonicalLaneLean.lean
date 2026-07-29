import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.GateLemmas
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.FinalTheorem
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.YonedaEmbeddingDeepConstruction
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.GabrielUlmerDuality
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.SiteAndSheafFoundationalInhabitants
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.KanExtensionRoute
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdjointFunctorTheorem

-- Root module for Categorical Embedding Theorems Canonical Lane Lean
-- This imports all domain-specific files.

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

-- Ensure that the bridge and gate lemmas are available

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem categorical_embedding_endgame (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse