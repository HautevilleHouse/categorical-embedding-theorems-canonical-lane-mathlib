import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure Category where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_left : ∀ {X Y} (f : Hom X Y), comp (id X) f = f
  id_right : ∀ {X Y} (f : Hom X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), comp (comp f g) h = comp f (comp g h)

structure Functor (C D : Category) where
  objMap : C.Obj → D.Obj
  homMap : {X Y : C.Obj} → C.Hom X Y → D.Hom (objMap X) (objMap Y)
  map_id : ∀ (X : C.Obj), homMap (C.id X) = D.id (objMap X)
  map_comp : ∀ {X Y Z : C.Obj} (f : C.Hom X Y) (g : C.Hom Y Z), homMap (C.comp f g) = D.comp (homMap f) (homMap g)

structure NaturalTransformation {C D : Category} (F G : Functor C D) where
  components : (X : C.Obj) → D.Hom (F.objMap X) (G.objMap X)
  naturality : ∀ {X Y : C.Obj} (f : C.Hom X Y), D.comp (components X) (G.homMap f) = D.comp (F.homMap f) (components Y)

structure CategoricalAdmittedObject where
  cat : Category
  embeddingCondition : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CategoricalAdmittedClosure (A : CategoricalAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
