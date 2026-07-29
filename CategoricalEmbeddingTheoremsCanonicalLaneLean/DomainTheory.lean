import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure DomainTheoryPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory → targetCategory
  fullness : Prop
  faithfulness : Prop
  essentialSurjectivity : Prop

definition DomainTheoryClosed (D : DomainTheoryPackage) : Prop :=
  D.fullness ∧ D.faithfulness ∧ D.essentialSurjectivity

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse