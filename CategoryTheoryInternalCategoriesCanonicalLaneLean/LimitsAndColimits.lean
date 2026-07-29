import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure LimitPackage (P : InternalCategoryPackage) where
  diagram : Type u
  cone : Type v
  limitObject : Type w
  universalProperty : Prop
  limitClosed : Prop

structure LimitEvidence (P : InternalCategoryPackage) (L : LimitPackage P) where
  universalPropertyClosed : L.universalProperty
  limitClosed : L.limitClosed

def LimitClosed (P : InternalCategoryPackage) (L : LimitPackage P) : Prop :=
  L.universalProperty ∧ L.limitClosed

theorem limit_closed_from_evidence (P : InternalCategoryPackage) (L : LimitPackage P) (E : LimitEvidence P L) : LimitClosed P L :=
  And.intro E.universalPropertyClosed E.limitClosed

structure ColimitPackage (P : InternalCategoryPackage) where
  diagram : Type u
  cocone : Type v
  colimitObject : Type w
  universalProperty : Prop
  colimitClosed : Prop

structure ColimitEvidence (P : InternalCategoryPackage) (C : ColimitPackage P) where
  universalPropertyClosed : C.universalProperty
  colimitClosed : C.colimitClosed

def ColimitClosed (P : InternalCategoryPackage) (C : ColimitPackage P) : Prop :=
  C.universalProperty ∧ C.colimitClosed

theorem colimit_closed_from_evidence (P : InternalCategoryPackage) (C : ColimitPackage P) (E : ColimitEvidence P C) : ColimitClosed P C :=
  And.intro E.universalPropertyClosed E.colimitClosed

end HautevilleHouse
end CategoryTheoryInternalCategoriesCanonicalLaneLean