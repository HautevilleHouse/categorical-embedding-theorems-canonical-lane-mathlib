import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure BarrEmbeddingPackage (B : Type) [RegularCategory B] where
  toposTarget : Type
  embeddingFull : Prop
  embeddingFaithful : Prop
  preservesFiniteLimits : Prop
  coversReflected : Prop

structure BarrEmbeddingEvidence {B : Type} [RegularCategory B] 
    (Barr : BarrEmbeddingPackage B) where
  embeddingFullClosed : Barr.embeddingFull
  embeddingFaithfulClosed : Barr.embeddingFaithful
  preservesFiniteLimitsClosed : Barr.preservesFiniteLimits
  coversReflectedClosed : Barr.coversReflected

def BarrEmbeddingClosed {B : Type} [RegularCategory B] 
    (Barr : BarrEmbeddingPackage B) : Prop :=
  Barr.embeddingFull ∧ Barr.embeddingFaithful ∧ 
  Barr.preservesFiniteLimits ∧ Barr.coversReflected

theorem barr_embedding_closed_from_evidence
    {B : Type} [RegularCategory B] (Barr : BarrEmbeddingPackage B) 
    (E : BarrEmbeddingEvidence Barr) : BarrEmbeddingClosed Barr := by
  exact And.intro E.embeddingFullClosed
    (And.intro E.embeddingFaithfulClosed
      (And.intro E.preservesFiniteLimitsClosed E.coversReflectedClosed))

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse