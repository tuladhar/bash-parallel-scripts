# bash-parallel-scripts
Run bash scripts in parallel across servers using bash background jobs.

## Prerequisite
- Servers must be one per line in `servers.txt` file and must be accessible without password using pubkey method.

## How to
1. Edit `run.sh` and place your custom commands there.
2. Execute `parallel.sh` script

Note: Logs are stored for each server runs.

Tips: Edit `MAX_NPROC` in `paralle.sh` to adjust # of parallel processes

## Why not use Ansible or Salt?
- Sometimes, bash script does the job done to keep things simple. For more complex command orchestration, those tools are preferred and does better job.

## Author
- Puru
