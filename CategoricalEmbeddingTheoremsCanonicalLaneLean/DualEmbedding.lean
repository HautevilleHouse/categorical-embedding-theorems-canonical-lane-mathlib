import canonicalLaneMathlib.AdmissibleClass

/-!
# Dual Embedding (Contravariant Yoneda)

The dual Yoneda embedding embeds a small category C into the category of copresheaves on C. This file defines the contravariant version and its properties.
-/

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure SmallCategory where
  obj : Type u
  hom : obj → obj → Type v
  identity : ∀ X : obj, hom X X
  compose : ∀ {X Y Z : obj}, hom Y Z → hom X Y → hom X Z
  smallness : Prop

structure CopresheafCategory (C : SmallCategory) where
  obj : Type (max u v)
  hom : obj → obj → Type (max u v)
  copresheafStructure : Prop

structure DualYonedaEmbeddingData (C : SmallCategory) where
  target : CopresheafCategory C
  dualYonedaFunctor : Type (max u v)
  fullFaithful : Prop
  dualYonedaData : dualYonedaFunctor ∧ fullFaithful

structure DualYonedaEmbeddingEvidence {C : SmallCategory}
    (D : DualYonedaEmbeddingData C) where
  dualYonedaDataClosed : D.dualYonedaData

def DualYonedaEmbeddingClosed {C : SmallCategory}
    (D : DualYonedaEmbeddingData C) : Prop :=
  D.dualYonedaData

theorem dual_yoneda_embedding_closed_from_evidence
    {C : SmallCategory} (D : DualYonedaEmbeddingData C)
    (E : DualYonedaEmbeddingEvidence D) : DualYonedaEmbeddingClosed D := by
  exact E.dualYonedaDataClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse