import CategoricalEmbeddingTheoremsCanonicalLaneLean.YonedaEmbedding

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

open CategoryTheory

structure DenseSubcategoryPackage (P : YonedaEmbeddingPackage) where
  subcategory : Type u
  [inst : SmallCategory subcategory]
  inclusion : subcategory ⥤ P.C
  isDense : Functor.IsDense inclusion
  restrictedYonedaFull : Full (inclusion.op ⋙ yoneda)
  restrictedYonedaFaithful : Faithful (inclusion.op ⋙ yoneda)
  denseEmbeddingClosed : restrictedYonedaFull ∧ restrictedYonedaFaithful

structure DenseSubcategoryEvidence (P : YonedaEmbeddingPackage)
    (D : DenseSubcategoryPackage P) where
  restrictedYonedaFullClosed : D.restrictedYonedaFull
  restrictedYonedaFaithfulClosed : D.restrictedYonedaFaithful

def DenseSubcategoryClosed (P : YonedaEmbeddingPackage)
    (D : DenseSubcategoryPackage P) : Prop :=
  D.restrictedYonedaFull ∧ D.restrictedYonedaFaithful

theorem dense_subcategory_closed_from_evidence (P : YonedaEmbeddingPackage)
    (D : DenseSubcategoryPackage P) (E : DenseSubcategoryEvidence P D) :
    DenseSubcategoryClosed P D :=
  And.intro E.restrictedYonedaFullClosed E.restrictedYonedaFaithfulClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse