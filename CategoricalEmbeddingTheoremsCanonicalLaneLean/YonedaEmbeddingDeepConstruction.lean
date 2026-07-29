import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure YonedaConstruction where
  localSmallness : Prop
  functorialEmbedding : Prop
  presheafRepresentability : Prop
  fullyFaithful : Prop
  limitPreservation : Prop
  localSmallnessTerm : localSmallness
  functorialEmbeddingTerm : functorialEmbedding
  presheafRepresentabilityTerm : presheafRepresentability
  fullyFaithfulTerm : fullyFaithful
  limitPreservationTerm : limitPreservation

def YonedaConstruction.toFoundational (Y : YonedaConstruction) : YonedaFoundationalInhabitants := {
  localSmallness := Y.localSmallness
  functorialEmbedding := Y.functorialEmbedding
  presheafRepresentability := Y.presheafRepresentability
  fullyFaithful := Y.fullyFaithful
  limitPreservation := Y.limitPreservation
  localSmallnessTerm := Y.localSmallnessTerm
  functorialEmbeddingTerm := Y.functorialEmbeddingTerm
  presheafRepresentabilityTerm := Y.presheafRepresentabilityTerm
  fullyFaithfulTerm := Y.fullyFaithfulTerm
  limitPreservationTerm := Y.limitPreservationTerm
}

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse