import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure EmbeddingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EmbeddingAdmittedObject where
  space : EmbeddingSpace
  sourceCategory : Type
  targetCategory : Type
  embeddingFunctor : sourceCategory → targetCategory
  isFullyFaithful : Prop
  essentiallySurjective : Prop
  conclusion : isFullyFaithful ∧ essentiallySurjective

structure EmbeddingEndgameState where
  object : EmbeddingAdmittedObject

def EmbeddingWitnessClosed (O : EmbeddingAdmittedObject) : Prop :=
  O.isFullyFaithful ∧ O.essentiallySurjective

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse