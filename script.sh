
debug() {
  # Check if the namespace is provided
  if [ -z "$1" ]; then
    echo "Usage: debug <namespace>"
    return 1
  fi

  NAMESPACE=$1

  # Run the kubectl command with the provided namespace
  kubectl run temp --rm -it --image nginx:alpine --restart Never --namespace "$NAMESPACE" -- sh
}
alias k=kubectl
export DO="--dry-run=client -o yaml"
export G="--now=true"

