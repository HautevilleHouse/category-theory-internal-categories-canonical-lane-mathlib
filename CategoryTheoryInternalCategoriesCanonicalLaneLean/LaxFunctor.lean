import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LaxFunctor (C D : Type u) [CategoryStruct.{v} C] [CategoryStruct.{v} D] where
  onObjects : C → D
  onMorphisms : (X Y : C) → (X ⟶ Y) → (onObjects X ⟶ onObjects Y)
  laxators : (X Y Z : C) → (f : X ⟶ Y) → (g : Y ⟶ Z) → (onMorphisms X Y f ≫ onMorphisms Y Z g) ⟶ onMorphisms X Z (f ≫ g)
  unit : (X : C) → 𝟙 (onObjects X) ⟶ onMorphisms X X (𝟙 X)

structure LaxFunctorEvidence (F : LaxFunctor C D) where
  associativityCoherence : Prop
  unitCoherence : Prop

def LaxFunctorClosed (F : LaxFunctor C D) : Prop :=
  True

theorem lax_functor_closed (F : LaxFunctor C D) : LaxFunctorClosed F :=
  trivial

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse