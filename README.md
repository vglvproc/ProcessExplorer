# ProcessExplorer

**ProcessExplorer** is a Linux-based command-line tool designed to explore various aspects of process behavior on a Linux system. While the project aims to eventually cover many facets of process functionality, including memory usage and other resource management details, it currently focuses on illustrating a few key process states: Running, Sleeping, and Zombie. These states are visualized using shell scripts and small C programs.

## Usage

1. **Cloning the repository:**
   Clone the repository to your local machine:
   ```bash
   git clone https://github.com/vglvproc/ProcessExplorer.git
   cd ProcessExplorer
   ```

2. **Demonstrating process states:**
   Use the scripts located in the `scripts/` directory to demonstrate various process states.

   - **Running state:**
     ```bash
     ./scripts/illustrate_running.sh
     ```

   - **Sleeping state:**
     ```bash
     ./scripts/illustrate_sleeping.sh
     ```

   - **Zombie state:**
     ```bash
     ./scripts/illustrate_zombie.sh
     ```

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.