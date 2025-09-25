import os
import torch

def count_cpu_cores():
    cores = os.cpu_count()
    print(f"Number of CPU cores available: {cores}")

if __name__ == "__main__":
    count_cpu_cores()
    print(f"Number of GPU cores available: {torch.cuda.device_count()}")