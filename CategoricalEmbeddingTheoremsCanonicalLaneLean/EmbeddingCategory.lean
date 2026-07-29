import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingCategoryPackage where
  sourceCategory : Type u
  targetCategory : Type v
  embeddingFunctor : sourceCategory → targetCategory
  faithful : Prop
  full : Prop
  essentiallySurjective : Prop
  embeddingType : String

structure EmbeddingCategoryEvidence (E : EmbeddingCategoryPackage) where
  faithfulClosed : E.faithful
  fullClosed : E.full
  essentiallySurjectiveClosed : E.essentiallySurjective

def EmbeddingCategoryClosed (E : EmbeddingCategoryPackage) : Prop :=
  E.faithful ∧ E.full ∧ E.essentiallySurjective

theorem embedding_category_closed_from_evidence (E : EmbeddingCategoryPackage)
    (Ev : EmbeddingCategoryEvidence E) : EmbeddingCategoryClosed E := by
  exact And.intro Ev.faithfulClosed (And.intro Ev.fullClosed Ev.essentiallySurjectiveClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
