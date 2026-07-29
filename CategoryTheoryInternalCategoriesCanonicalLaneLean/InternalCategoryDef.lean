import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.AdmissibleClass

/-!
# Internal Category Definition Package
-/

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryPackage where
  objects : Type u
  morphisms : Type u
  source : morphisms → objects
  target : morphisms → objects
  identity : objects → morphisms
  composition : {x y z : objects} → (f : morphisms) → (g : morphisms) → (h : target f = source g) → morphisms
  axiomsSatisfied : Prop

structure InternalCategoryEvidence (C : InternalCategoryPackage) where
  axiomsSatisfiedClosed : C.axiomsSatisfied

def InternalCategoryClosed (C : InternalCategoryPackage) : Prop :=
  C.axiomsSatisfied

theorem internal_category_closed_from_evidence
    (C : InternalCategoryPackage) (E : InternalCategoryEvidence C) :
    InternalCategoryClosed C := by
  exact E.axiomsSatisfiedClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse