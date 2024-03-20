
# SKA Docker Container

This Docker container provides an environment with SKA (Simple K-mer Analysis Tool) installed, ready for running SKA commands. SKA is designed for the alignment and analysis of genomic data using k-mer based methods. The Docker image is based on Ubuntu 22.04 (Jammy Jellyfish) to ensure compatibility with the SKA binary's GLIBC requirements.


### Building the Docker Image

To build the Docker image from the Dockerfile, navigate to the directory containing the Dockerfile and use `build_push.sh`

### Running the Container

To run a container using the built image use `demo.sh`

This command starts an interactive bash session within the container. You can run SKA commands directly in this shell.


## Running SKA Commands

With the container running and your data directory mounted, you can execute SKA commands. For example:

```sh
ska align --min-freq 1 --filter no-filter /data/output/laos_ska_index.skf -o /data/output/laos_ska_alignment.aln --threads 4
```

Ensure your paths are adjusted to match where your files are located within the mounted directory.

## Further Information

For more details on SKA and its usage, visit the [SKA GitHub repository](https://github.com/bacpop/ska.rust).
