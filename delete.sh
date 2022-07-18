#!/bin/bash
kubectl delete -n otus deployment soultoxik
kubectl delete -n otus service soultoxik
kubectl delete -n otus service echo
kubectl delete -n otus ingress soultoxik
kubectl delete namespaces otus