import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.YonedaBridge
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

def ConstrainedInternalCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_internal_category_endgame (A : AdmissibleClass) : ConstrainedInternalCategoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse