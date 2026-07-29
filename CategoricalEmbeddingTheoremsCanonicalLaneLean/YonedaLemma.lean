import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  object : category
  presheaf : Type v
  naturalBijection : Prop
  naturalBijectionClosed : naturalBijection

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalBijectionClosed : Y.naturalBijection

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalBijection

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact E.naturalBijectionClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
