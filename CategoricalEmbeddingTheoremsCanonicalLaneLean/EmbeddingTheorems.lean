import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingTheoremPackage where
  sourceCategory : Category
  targetCategory : Category
  embeddingFunctor : Functor sourceCategory targetCategory
  faithful : Prop
  full : Prop
  isomorphismReflecting : Prop

def EmbeddingTheoremClosed (E : EmbeddingTheoremPackage) : Prop :=
  E.faithful ∧ E.full ∧ E.isomorphismReflecting

theorem embedding_theorem_from_admissible_class (A : AdmissibleClass) : EmbeddingTheoremClosed ({
    sourceCategory := A.sourceCategory
    targetCategory := A.targetCategory
    embeddingFunctor := A.embeddingFunctor
    faithful := A.faithfulEmbedding
    full := A.fullEmbedding
    isomorphismReflecting := A.isomorphismReflectingEmbedding
  }) := by
  refine ⟨?_, ?_, ?_⟩
  · exact A.faithfulEmbedding
  · exact A.fullEmbedding
  · exact A.isomorphismReflectingEmbedding

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse