import CategoricalEmbeddingTheoremsCanonicalLaneLean.DenseSubcategory

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

open CategoryTheory

structure PresheafCategoryPackage where
  baseCategory : Type u
  [inst : SmallCategory baseCategory]
  targetCategory : Type (max u v) := baseCategory ⥤ Type v
  presheafCategoryDefined : Category (baseCategory ⥤ Type v)
  yonedaEmbedding : baseCategory ⥤ (baseCategory ⥤ Type v) := yoneda
  presheafCategoryClosed : presheafCategoryDefined

structure PresheafCategoryEvidence (P : PresheafCategoryPackage) where
  presheafCategoryDefinedClosed : P.presheafCategoryDefined

def PresheafCategoryClosed (P : PresheafCategoryPackage) : Prop :=
  P.presheafCategoryDefined

theorem presheaf_category_closed_from_evidence (P : PresheafCategoryPackage)
    (E : PresheafCategoryEvidence P) : PresheafCategoryClosed P :=
  E.presheafCategoryDefinedClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse