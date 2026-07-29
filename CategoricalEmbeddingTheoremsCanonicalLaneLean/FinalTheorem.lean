import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.EmbeddingCategory
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.YonedaLemmaEmbedding
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.MitchellEmbedding

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmbeddingCategoryClosed (A.object)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEmbeddingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embedding_endgame (A : AdmissibleClass) : ConstrainedEmbeddingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
