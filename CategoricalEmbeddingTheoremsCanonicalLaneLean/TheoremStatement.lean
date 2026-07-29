import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingWitness where
  sourceCategory : Type u
  targetCategory : Type v
  embeddingFunctor : sourceCategory → targetCategory
  fullyFaithful : Prop
  essentialSurjective : Prop
  isEquivalence : Prop
  conclusion : isEquivalence

structure AdmittedObject where
  witness : EmbeddingWitness
  embeddingClosed : Prop
  conclusion : embeddingClosed

def EmbeddingWitnessClosed (O : AdmittedObject) : Prop :=
  O.embeddingClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse