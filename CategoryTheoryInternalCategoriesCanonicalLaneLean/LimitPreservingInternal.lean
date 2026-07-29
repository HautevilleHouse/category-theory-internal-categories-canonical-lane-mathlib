import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalFunctors

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LimitPreservingInternalPackage {C : Type u} [Category.{v} C] (D : Type w) [Category.{t} D] where
  internalDiagram : Type (max u v)
  internalLimitCone : internalDiagram → Type (max u v)
  limitUniversalProperty : ∀ (F : internalDiagram), Nonempty (IsLimit (internalLimitCone F))
  internalFunctorPreservesLimit : (F : InternalFunctor C (InternalCategory.mk D)) → ∀ (d : internalDiagram), PreservesLimit (F.mapDiagram d)

structure LimitPreservingInternalEvidence {C : Type u} [Category.{v} C] {D : Type w} [Category.{t} D] (L : LimitPreservingInternalPackage C D) where
  limitUniversalClosed : ∀ (F : L.internalDiagram), Nonempty (IsLimit (L.internalLimitCone F))
  internalFunctorPreservesClosed : ∀ (F : InternalFunctor C (InternalCategory.mk D)) (d : L.internalDiagram), PreservesLimit (F.mapDiagram d)

def LimitPreservingInternalClosed {C : Type u} [Category.{v} C] {D : Type w} [Category.{t} D] (L : LimitPreservingInternalPackage C D) : Prop :=
  (∀ (F : L.internalDiagram), Nonempty (IsLimit (L.internalLimitCone F))) ∧
  (∀ (F : InternalFunctor C (InternalCategory.mk D)) (d : L.internalDiagram), PreservesLimit (F.mapDiagram d))

theorem limit_preserving_internal_closed_from_evidence {C : Type u} [Category.{v} C] {D : Type w} [Category.{t} D] (L : LimitPreservingInternalPackage C D) (E : LimitPreservingInternalEvidence L) : LimitPreservingInternalClosed L :=
  And.intro E.limitUniversalClosed E.internalFunctorPreservesClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse