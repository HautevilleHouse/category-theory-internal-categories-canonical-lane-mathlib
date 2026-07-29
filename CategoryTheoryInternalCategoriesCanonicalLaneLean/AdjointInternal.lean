import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalFunctors

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure AdjointInternalPackage {C : Type u} [Category.{v} C] where
  leftAdjoint : Function (C → C)
  rightAdjoint : Function (C → C)
  unit : ∀ (X : C), X ⟶ rightAdjoint (leftAdjoint X)
  counit : ∀ (X : C), leftAdjoint (rightAdjoint X) ⟶ X
  triangleLeft : ∀ (X : C), counit (leftAdjoint X) ∘ leftAdjoint.map (unit X) = 𝟙 (leftAdjoint X)
  triangleRight : ∀ (X : C), rightAdjoint.map (counit X) ∘ unit (rightAdjoint X) = 𝟙 (rightAdjoint X)

structure AdjointInternalEvidence (A : AdjointInternalPackage C) where
  triangleLeftClosed : ∀ (X : C), A.counit (A.leftAdjoint X) ∘ (A.leftAdjoint.map (A.unit X)) = 𝟙 (A.leftAdjoint X)
  triangleRightClosed : ∀ (X : C), (A.rightAdjoint.map (A.counit X)) ∘ A.unit (A.rightAdjoint X) = 𝟙 (A.rightAdjoint X)

def AdjointInternalClosed (A : AdjointInternalPackage C) : Prop :=
  (∀ (X : C), A.counit (A.leftAdjoint X) ∘ A.leftAdjoint.map (A.unit X) = 𝟙 (A.leftAdjoint X)) ∧
  (∀ (X : C), A.rightAdjoint.map (A.counit X) ∘ A.unit (A.rightAdjoint X) = 𝟙 (A.rightAdjoint X))

theorem adjoint_internal_closed_from_evidence (A : AdjointInternalPackage C) (E : AdjointInternalEvidence A) : AdjointInternalClosed A :=
  And.intro E.triangleLeftClosed E.triangleRightClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse