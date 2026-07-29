import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure LindenbaumEmbeddingPackage where
  language : Type u
  theory : Prop
  syntacticCategory : Type v
  embeddingFunctor : Type w
  consistentTheory : Prop
  fullyFaithfulFunctor : Prop
  consistentTheoryClosed : consistentTheory
  fullyFaithfulFunctorClosed : fullyFaithfulFunctor

structure LindenbaumEmbeddingEvidence
    (L : LindenbaumEmbeddingPackage) where
  consistentTheoryClosed : L.consistentTheory
  fullyFaithfulFunctorClosed : L.fullyFaithfulFunctor

def LindenbaumEmbeddingClosed
    (L : LindenbaumEmbeddingPackage) : Prop :=
  L.consistentTheory ∧ L.fullyFaithfulFunctor

theorem lindenbaum_embedding_closed_from_evidence
    (L : LindenbaumEmbeddingPackage)
    (E : LindenbaumEmbeddingEvidence L) :
    LindenbaumEmbeddingClosed L := by
  exact And.intro E.consistentTheoryClosed E.fullyFaithfulFunctorClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
