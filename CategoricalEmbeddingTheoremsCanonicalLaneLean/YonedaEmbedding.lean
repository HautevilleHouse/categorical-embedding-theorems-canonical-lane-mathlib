import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure YonedaEmbeddingPackage where
  category : Type u
  object : Type v
  homSet : object -> object -> Type w
  functorCategory : Type u2
  yonedaFunctor : object -> functorCategory
  fullyFaithful : Prop
  fullFaithfulTerm : fullyFaithful

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullyFaithful

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  fullyFaithfulClosed : Y.fullyFaithful

theorem yoneda_embedding_closed_from_evidence (Y : YonedaEmbeddingPackage)
    (E : YonedaEmbeddingEvidence Y) : YonedaEmbeddingClosed Y := by
  exact E.fullyFaithfulClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse