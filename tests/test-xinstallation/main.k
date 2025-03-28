
import models.io.crossplane.helm.v1alpha1 as helmv1alpha1
import models.io.crossplane.helm.v1beta1 as helmv1beta1
import models.io.livewyer.piraeus.v1alpha1 as piraeusv1alpha1
import models.io.upbound.dev.meta.v1alpha1 as metav1alpha1
import models.k8s.apimachinery.pkg.apis.meta.v1 as metav1


_items = [
    metav1alpha1.CompositionTest{
        metadata.name: ""
        spec= {
            assertResources: []
            compositionPath: "apis/installation/composition.yaml"
            xrPath: "tests/test-xinstallation/test.yaml"
            xrdPath: "apis/installation/definition.yaml"
            timeoutSeconds: 60
            validate: True
        }
    }
]
items= _items
