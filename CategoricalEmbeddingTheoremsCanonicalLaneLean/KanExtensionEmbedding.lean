import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure KanExtensionEmbeddingPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory -> targetCategory
  leftKanExtension : Type w
  rightKanExtension : Type z
  leftKanDefined : Prop
  rightKanDefined : Prop
  leftKanTerm : leftKanDefined
  rightKanTerm : rightKanDefined

def KanExtensionEmbeddingClosed (K : KanExtensionEmbeddingPackage) : Prop :=
  K.leftKanDefined ∧ K.rightKanDefined

structure KanExtensionEmbeddingEvidence (K : KanExtensionEmbeddingPackage) where
  leftKanDefinedClosed : K.leftKanDefined
  rightKanDefinedClosed : K.rightKanDefined

theorem kan_extension_embedding_closed_from_evidence (K : KanExtensionEmbeddingPackage)
    (E : KanExtensionEmbeddingEvidence K) : KanExtensionEmbeddingClosed K := by
  exact And.intro E.leftKanDefinedClosed E.rightKanDefinedClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse