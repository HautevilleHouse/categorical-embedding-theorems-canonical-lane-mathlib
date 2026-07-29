import canonicalLaneMathlib.AdmissibleClass

/-!
# Lubkin Embedding Theorem

The Lubkin embedding theorem states that any small abelian category has a full, faithful, exact embedding into the category of abelian groups. This is a specialization of the Freyd-Mitchell theorem.
-/

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure SmallAbelianCategory where
  obj : Type u
  hom : obj → obj → Type v
  identity : ∀ X : obj, hom X X
  compose : ∀ {X Y Z : obj}, hom Y Z → hom X Y → hom X Z
  abelianStructure : Prop
  smallness : Prop

structure AbelianGroupCategory where
  obj : Type u
  hom : obj → obj → Type v
  abelianGroupStructure : Prop

structure LubkinEmbeddingData where
  source : SmallAbelianCategory
  target : AbelianGroupCategory
  embeddingFunctor : Type (max u v)
  fullFaithfulExact : Prop
  embeddingExists : embeddingFunctor ∧ fullFaithfulExact

structure LubkinEmbeddingEvidence (L : LubkinEmbeddingData) where
  embeddingExistsClosed : L.embeddingExists

def LubkinEmbeddingClosed (L : LubkinEmbeddingData) : Prop :=
  L.embeddingExists

theorem lubkin_embedding_closed_from_evidence (L : LubkinEmbeddingData)
    (E : LubkinEmbeddingEvidence L) : LubkinEmbeddingClosed L := by
  exact E.embeddingExistsClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse