variable "TAG" {
    default = "develop"
}

variable "REPOSITORY" {
    default = "ghcr.io"
}

group "default" {
    targets = [
        "blockchain-telemetry-frontend",
    ]
}

target "blockchain-telemetry-frontend" {
    dockerfile = "Dockerfile"
    platforms = ["linux/amd64"]
    tags = ["${REPOSITORY}/thxnet/blockchain-telemetry-frontend:${TAG}"]
}