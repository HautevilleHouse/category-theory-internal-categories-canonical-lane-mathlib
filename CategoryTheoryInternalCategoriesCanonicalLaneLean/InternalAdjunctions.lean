import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalAdjunction (C D : InternalCategoryObject) (F : InternalFunctor C D) (G : InternalFunctor D C) where
  unit : InternalNaturalTransformation (identityFunctor C) (compFunctor G F)
  counit : InternalNaturalTransformation (compFunctor F G) (identityFunctor D)
  triangleIdentities : Prop
  triangleIdentitiesWitness : triangleIdentities

def AdjunctionClosed {C D : InternalCategoryObject} {F : InternalFunctor C D} {G : InternalFunctor D C} (A : InternalAdjunction C D F G) : Prop :=
  A.triangleIdentities

theorem adjunction_closed_from_evidence {C D : InternalCategoryObject} {F : InternalFunctor C D} {G : InternalFunctor D C} (A : InternalAdjunction C D F G) : AdjunctionClosed A := by
  exact A.triangleIdentitiesWitness

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse