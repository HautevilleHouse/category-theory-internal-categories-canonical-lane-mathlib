import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCatAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LimitsColimitsPackage (C : InternalCategoryObject) where
  diagramType : Type
  limitObject : (C.objectClass → Type) → C.objectClass
  colimitObject : (C.objectClass → Type) → C.objectClass
  limitUniversal : ∀ (D : C.objectClass → Type) (x : C.objectClass),
    (∀ (i : C.objectClass), C.morphismClass.arrows x (D i)) → C.morphismClass.arrows x (limitObject D)
  colimitUniversal : ∀ (D : C.objectClass → Type) (x : C.objectClass),
    (∀ (i : C.objectClass), C.morphismClass.arrows (D i) x) → C.morphismClass.arrows (colimitObject D) x
  limitExistence : Prop
  colimitExistence : Prop
  limitExistenceClosed : limitExistence
  colimitExistenceClosed : colimitExistence

structure LimitsColimitsEvidence (C : InternalCategoryObject)
    (L : LimitsColimitsPackage C) where
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence

def LimitsColimitsClosed (C : InternalCategoryObject)
    (L : LimitsColimitsPackage C) : Prop :=
  L.limitExistence ∧ L.colimitExistence

theorem limits_colimits_closed_from_evidence (C : InternalCategoryObject)
    (L : LimitsColimitsPackage C) (E : LimitsColimitsEvidence C L) :
    LimitsColimitsClosed C L := by
  exact And.intro E.limitExistenceClosed E.colimitExistenceClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse