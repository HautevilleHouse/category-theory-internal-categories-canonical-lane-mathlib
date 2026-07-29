import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryObject where
  carrier : Type u
  objectClassifier : Type v
  morphismClassifier : Type w
  sourceMap : morphismClassifier → objectClassifier
  targetMap : morphismClassifier → objectClassifier
  identityMap : objectClassifier → morphismClassifier
  compositionMap : morphismClassifier × morphismClassifier → morphismClassifier
  sourceComposition : compositionMap (f, g) = compositionMap (sourceMap f, g)
  targetComposition : compositionMap (f, g) = compositionMap (f, targetMap g)
  identityLeft : compositionMap (identityMap (sourceMap f), f) = f
  identityRight : compositionMap (f, identityMap (targetMap f)) = f
  associativity : compositionMap (compositionMap (f, g), h) = compositionMap (f, compositionMap (g, h))

structure InternalCategoryMorphism (A B : InternalCategoryObject) where
  arrowMap : A.carrier → B.carrier
  preservesObjectClassifier : arrowMap ∘ A.objectClassifier = B.objectClassifier ∘ arrowMap
  preservesMorphismClassifier : arrowMap ∘ A.morphismClassifier = B.morphismClassifier ∘ arrowMap
  preservesSource : arrowMap ∘ A.sourceMap = B.sourceMap ∘ arrowMap
  preservesTarget : arrowMap ∘ A.targetMap = B.targetMap ∘ arrowMap
  preservesIdentity : arrowMap ∘ A.identityMap = B.identityMap ∘ arrowMap
  preservesComposition : arrowMap ∘ A.compositionMap = B.compositionMap ∘ arrowMap

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse
