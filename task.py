import numpy as np
import time 

def main():
    start = time.time()
    # Do a random matrix multiplication
    a = np.random.rand(1000, 1000)
    b = np.random.rand(1000, 1000)



    c = np.dot(a, b)
    end = time.time()
    elapsed = end - start
    print(f"Time taken for matrix multiplication: {elapsed} seconds")

    # Write the result to a file
    with open("temp/result.txt", "w") as f:
        f.write(str(elapsed) + "\n")

if __name__ == "__main__":
    main()