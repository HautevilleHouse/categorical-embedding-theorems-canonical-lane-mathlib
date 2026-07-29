import canonicalLaneMathlib.CategoricalEmbeddingTheoremsCanonicalLaneLean.YonedaEmbedding

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingEndpointClassificationPackage
    (Y : YonedaEmbeddingPackage C) where
  targetCategory : CategoricalSpace
  fullSubcategory : CategoricalSpace
  embeddingIntoFull : Y.presheafCategory.carrier → targetCategory.carrier
  fullyFaithful : Prop
  endpointMatchesYoneda : Prop

structure EmbeddingEndpointClassificationEvidence
    (Epkg : EmbeddingEndpointClassificationPackage Y) where
  fullyFaithfulClosed : Epkg.fullyFaithful
  endpointMatchesYonedaClosed : Epkg.endpointMatchesYoneda

def EmbeddingEndpointClassificationClosed
    (Epkg : EmbeddingEndpointClassificationPackage Y) : Prop :=
  Epkg.fullyFaithful ∧ Epkg.endpointMatchesYoneda

theorem embedding_endpoint_classification_closed_from_evidence
    (Epkg : EmbeddingEndpointClassificationPackage Y)
    (E : EmbeddingEndpointClassificationEvidence Epkg) :
    EmbeddingEndpointClassificationClosed Epkg := by
  exact And.intro E.fullyFaithfulClosed E.endpointMatchesYonedaClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse