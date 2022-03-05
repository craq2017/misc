for node in `oc get node --output=name -l node-role.kubernetes.io/worker=""`; do
    echo $node
    oc describe $node | grep 'Allocated resources' -A 5
    echo
done
