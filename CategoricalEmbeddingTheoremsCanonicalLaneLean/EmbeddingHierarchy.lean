import canonicalLaneMathlib.AdmissibleClass
import CategoricalEmbeddingTheoremsCanonicalLaneLean.DomainTheory

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingHierarchyPackage (D : DomainTheoryPackage) where
  level : ℕ
  embeddingFunctor : D.sourceCategory → D.targetCategory
  factorizationProperty : D.fullness → D.faithfulness → Prop

definition EmbeddingHierarchyClosed (E : EmbeddingHierarchyPackage D) : Prop :=
  E.factorizationProperty D.fullness D.faithfulness

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse