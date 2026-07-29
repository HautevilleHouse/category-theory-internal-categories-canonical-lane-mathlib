import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryObject where
  objectClass : Type
  morphismClass : Type
  sourceMap : morphismClass → objectClass
  targetMap : morphismClass → objectClass
  identityMap : objectClass → morphismClass
  compositionMap : morphismClass → morphismClass → morphismClass
  sourceTarget : ∀ (f : morphismClass), sourceMap (targetMap f) = targetMap f
  targetSource : ∀ (f : morphismClass), targetMap (sourceMap f) = sourceMap f
  identitySource : ∀ (x : objectClass), sourceMap (identityMap x) = x
  identityTarget : ∀ (x : objectClass), targetMap (identityMap x) = x
  compositionSource : ∀ (f g : morphismClass), sourceMap g = targetMap f → sourceMap (compositionMap g f) = sourceMap f
  compositionTarget : ∀ (f g : morphismClass), sourceMap g = targetMap f → targetMap (compositionMap g f) = targetMap g
  associativity : ∀ (f g h : morphismClass), sourceMap g = targetMap f → sourceMap h = targetMap g → compositionMap (compositionMap h g) f = compositionMap h (compositionMap g f)
  leftUnit : ∀ (f : morphismClass), compositionMap (identityMap (targetMap f)) f = f
  rightUnit : ∀ (f : morphismClass), compositionMap f (identityMap (sourceMap f)) = f

def CategoryOfInternalCategoriesObject : Type := InternalCategoryObject

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse