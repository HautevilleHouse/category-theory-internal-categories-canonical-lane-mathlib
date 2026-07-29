import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalNaturalTransformation

/-!
# Internal Limit Package
-/

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCone {C D : InternalCategoryPackage} (F : InternalFunctorPackage C D) where
  apex : D.objects
  projection : ∀ (X : C.objects), D.morphisms
  coneAxioms : Prop

structure InternalLimitPackage {C D : InternalCategoryPackage} (F : InternalFunctorPackage C D) where
  cone : InternalCone F
  universalProperty : Prop
  limitAxiomsSatisfied : Prop

structure InternalLimitEvidence {C D : InternalCategoryPackage} {F : InternalFunctorPackage C D}
    (L : InternalLimitPackage F) where
  limitAxiomsSatisfiedClosed : L.limitAxiomsSatisfied

def InternalLimitClosed {C D : InternalCategoryPackage} {F : InternalFunctorPackage C D}
    (L : InternalLimitPackage F) : Prop :=
  L.limitAxiomsSatisfied

theorem internal_limit_closed_from_evidence
    {C D : InternalCategoryPackage} {F : InternalFunctorPackage C D}
    (L : InternalLimitPackage F) (E : InternalLimitEvidence L) :
    InternalLimitClosed L := by
  exact E.limitAxiomsSatisfiedClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse