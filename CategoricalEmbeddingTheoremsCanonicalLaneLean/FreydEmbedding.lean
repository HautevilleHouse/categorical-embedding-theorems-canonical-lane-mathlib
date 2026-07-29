import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure FreydEmbeddingPackage where
  smallCategory : Type u
  presheafCategory : Type v
  embeddingFunctor : smallCategory -> presheafCategory
  fullyFaithful : Prop
  dense : Prop
  fullyFaithfulTerm : fullyFaithful
  denseTerm : dense

def FreydEmbeddingClosed (F : FreydEmbeddingPackage) : Prop :=
  F.fullyFaithful ∧ F.dense

structure FreydEmbeddingEvidence (F : FreydEmbeddingPackage) where
  fullyFaithfulClosed : F.fullyFaithful
  denseClosed : F.dense

theorem freyd_embedding_closed_from_evidence (F : FreydEmbeddingPackage)
    (E : FreydEmbeddingEvidence F) : FreydEmbeddingClosed F := by
  exact And.intro E.fullyFaithfulClosed E.denseClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse