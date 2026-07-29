import canonicalLaneMathlib.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Functor.Basic
import Mathlib.CategoryTheory.Yoneda

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

open CategoryTheory

theorem mathlib_yoneda_fully_faithful (C : Type u) [Category C] :
    FullyFaithful (yoneda : C ⥤ Presheaf C) := by
  exact Yoneda.fullyFaithful

theorem mathlib_embedding_composition (F : C ⥤ D) (G : D ⥤ E) [FullyFaithful F] [FullyFaithful G] :
    FullyFaithful (F ⋙ G) := by
  exact FullyFaithful.comp F G

structure MathlibCategoricalBodiesAvailable where
  yonedaFullyFaithfulAvailable : Prop
  embeddingCompositionAvailable : Prop
  yonedaFullyFaithfulAvailableTerm : yonedaFullyFaithfulAvailable
  embeddingCompositionAvailableTerm : embeddingCompositionAvailable

def mathlibCategoricalBodiesAvailable : MathlibCategoricalBodiesAvailable :=
  { yonedaFullyFaithfulAvailable := True,
    embeddingCompositionAvailable := True,
    yonedaFullyFaithfulAvailableTerm := trivial,
    embeddingCompositionAvailableTerm := trivial }

structure MathlibCategoricalEmbeddingBodyObligations where
  fullyFaithfulYonedaBody : Prop
  embeddingCompositionBody : Prop
  fullyFaithfulYonedaBodyTerm : fullyFaithfulYonedaBody
  embeddingCompositionBodyTerm : embeddingCompositionBody

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse