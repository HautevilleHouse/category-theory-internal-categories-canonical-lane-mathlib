import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategory

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryAdmissibleClass (C : Type u) [Category C] where
  cat : InternalCategory C
  bridgeClosed : Prop
  gateClosed : Prop
  bridgeClosedTerm : bridgeClosed
  gateClosedTerm : gateClosed

def constrainedInternalCategoryClosure (A : InternalCategoryAdmissibleClass C) : Prop :=
  A.bridgeClosed ∧ A.gateClosed

theorem internal_category_bridge_from_admissible (A : InternalCategoryAdmissibleClass C) :
    A.bridgeClosed := A.bridgeClosedTerm

theorem internal_category_gate_from_admissible (A : InternalCategoryAdmissibleClass C) :
    A.gateClosed := A.gateClosedTerm

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse