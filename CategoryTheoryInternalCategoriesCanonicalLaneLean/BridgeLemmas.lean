import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse