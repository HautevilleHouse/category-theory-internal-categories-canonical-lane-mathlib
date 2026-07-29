import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCatAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure AdjointFunctorsPackage (C D : InternalCategoryObject) where
  leftAdjoint : (C.objectClass → D.objectClass)
  rightAdjoint : (D.objectClass → C.objectClass)
  adjunctionUnit : ∀ (x : C.objectClass), D.morphismClass.arrows (leftAdjoint x) (leftAdjoint x)
  adjunctionCounit : ∀ (y : D.objectClass), C.morphismClass.arrows (rightAdjoint y) (rightAdjoint y)
  triangleIdentities : Prop
  triangleIdentitiesClosed : triangleIdentities

structure AdjointFunctorsEvidence (C D : InternalCategoryObject)
    (A : AdjointFunctorsPackage C D) where
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorsClosed (C D : InternalCategoryObject)
    (A : AdjointFunctorsPackage C D) : Prop :=
  A.triangleIdentities

theorem adjoint_functors_closed_from_evidence (C D : InternalCategoryObject)
    (A : AdjointFunctorsPackage C D) (E : AdjointFunctorsEvidence C D A) :
    AdjointFunctorsClosed C D A := by
  exact E.triangleIdentitiesClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse