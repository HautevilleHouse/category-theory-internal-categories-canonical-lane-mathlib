import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalFunctor (C D : InternalCategoryObject) where
  objectMap : C.carrier → D.carrier
  morphismMap : C.morphismClassifier → D.morphismClassifier
  preservesSource : morphismMap ∘ C.sourceMap = D.sourceMap ∘ morphismMap
  preservesTarget : morphismMap ∘ C.targetMap = D.targetMap ∘ morphismMap
  preservesIdentity : morphismMap ∘ C.identityMap = D.identityMap ∘ morphismMap
  preservesComposition : morphismMap ∘ C.compositionMap = D.compositionMap ∘ morphismMap

structure AdjointPair (C D : InternalCategoryObject) where
  leftAdjoint : InternalFunctor C D
  rightAdjoint : InternalFunctor D C
  unitNaturalTransformation : InternalFunctor C C
  counitNaturalTransformation : InternalFunctor D D
  triangleIdentities : Prop

theorem adjointClosure (C D : InternalCategoryObject) (A : AdjointPair C D) : Prop := A.triangleIdentities

structure AdjointExistencePackage (C D : InternalCategoryObject) where
  leftAdjointExists : ∀ (F : InternalFunctor C D), ∃ (G : InternalFunctor D C), AdjointPair.mk F G
  rightAdjointExists : ∀ (G : InternalFunctor D C), ∃ (F : InternalFunctor C D), AdjointPair.mk F G

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse
