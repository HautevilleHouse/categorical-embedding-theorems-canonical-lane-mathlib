import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.EmbeddingCategory

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure YonedaEmbeddingPackage where
  localCategory : Type u
  presheafCategory : Type v
  yonedaFunctor : localCategory → presheafCategory
  fullyFaithful : Prop
  embeddingIntoPresheaves : Prop
  yonedaLemmaHolds : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  fullyFaithfulClosed : Y.fullyFaithful
  embeddingIntoPresheavesClosed : Y.embeddingIntoPresheaves
  yonedaLemmaHoldsClosed : Y.yonedaLemmaHolds

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullyFaithful ∧ Y.embeddingIntoPresheaves ∧ Y.yonedaLemmaHolds

theorem yoneda_embedding_closed_from_evidence (Y : YonedaEmbeddingPackage)
    (Ev : YonedaEmbeddingEvidence Y) : YonedaEmbeddingClosed Y := by
  exact And.intro Ev.fullyFaithfulClosed (And.intro Ev.embeddingIntoPresheavesClosed Ev.yonedaLemmaHoldsClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
