import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LimitCone (C : InternalCategoryObject) where
  apex : C.carrier
  projections : C.carrier → C.morphismClassifier
  commutativity : ∀ (f : C.morphismClassifier), projections (C.sourceMap f) = C.compositionMap (projections (C.targetMap f), f)

structure ColimitCocone (C : InternalCategoryObject) where
  apex : C.carrier
  injections : C.carrier → C.morphismClassifier
  commutativity : ∀ (f : C.morphismClassifier), C.compositionMap (injections (C.sourceMap f), f) = injections (C.targetMap f)

structure AdmissibleLimit (C : InternalCategoryObject) where
  limitCone : LimitCone C
  universalProperty : ∀ (other : LimitCone C), ∃! morphism : C.carrier → C.carrier, other.projections = limitCone.projections ∘ morphism

structure AdmissibleColimit (C : InternalCategoryObject) where
  colimitCocone : ColimitCocone C
  universalProperty : ∀ (other : ColimitCocone C), ∃! morphism : C.carrier → C.carrier, other.injections = morphism ∘ colimitCocone.injections

structure LimitColimitPackage (C : InternalCategoryObject) where
  limitsExist : ∀ (diagram : C.morphismClassifier → C.carrier), AdmissibleLimit C
  colimitsExist : ∀ (diagram : C.morphismClassifier → C.carrier), AdmissibleColimit C

theorem limitClosure (C : InternalCategoryObject) (L : LimitColimitPackage C) : Prop := L.limitsExist (λ _ => (GenericObject C).carrier)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse
