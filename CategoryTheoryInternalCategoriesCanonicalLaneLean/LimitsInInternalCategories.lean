import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LimitInInternalCategory (C : InternalCategoryObject) (J : InternalCategoryObject) where
  diagram : InternalFunctor J C
  cone : InternalFunctor (ConstantJ C) C
  universalProperty : Prop
  universalPropertyWitness : universalProperty

structure InternalCategoryHasLimits (C : InternalCategoryObject) where
  allSmallLimits : ∀ (J : InternalCategoryObject), LimitInInternalCategory C J
  limitsClosed : ∀ (J : InternalCategoryObject), (allSmallLimits J).universalProperty

def LimitsClosed (C : InternalCategoryObject) (L : InternalCategoryHasLimits C) : Prop :=
  ∀ (J : InternalCategoryObject), (L.allSmallLimits J).universalProperty

theorem limits_closed_from_evidence (C : InternalCategoryObject) (L : InternalCategoryHasLimits C) : LimitsClosed C L := by
  intro J
  exact (L.allSmallLimits J).universalPropertyWitness

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse