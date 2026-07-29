import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

def ConstrainedInternalCategoryClosure (A : InternalCategoryAdmissibleClass C) : Prop :=
  A.bridgeClosed ∧ A.gateClosed

theorem constrained_internal_category_endgame (A : InternalCategoryAdmissibleClass C) :
    ConstrainedInternalCategoryClosure A := by
  exact And.intro (internal_category_bridge_from_admissible A) (internal_category_gate_from_admissible A)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse