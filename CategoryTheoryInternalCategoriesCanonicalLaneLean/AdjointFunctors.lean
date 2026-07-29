import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure AdjunctionPackage (P : InternalCategoryPackage) where
  leftFunctor : Type u
  rightFunctor : Type u
  unit : Prop
  counit : Prop
  triangleIdentities : Prop
  adjunctionClosed : Prop

structure AdjunctionEvidence (P : InternalCategoryPackage) (A : AdjunctionPackage P) where
  unitClosed : A.unit
  counitClosed : A.counit
  triangleIdentitiesClosed : A.triangleIdentities
  adjunctionClosed : A.adjunctionClosed

def AdjunctionClosed (P : InternalCategoryPackage) (A : AdjunctionPackage P) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities ∧ A.adjunctionClosed

theorem adjunction_closed_from_evidence (P : InternalCategoryPackage) (A : AdjunctionPackage P) (E : AdjunctionEvidence P A) : AdjunctionClosed P A :=
  And.intro E.unitClosed (And.intro E.counitClosed (And.intro E.triangleIdentitiesClosed E.adjunctionClosed))

end HautevilleHouse
end CategoryTheoryInternalCategoriesCanonicalLaneLean