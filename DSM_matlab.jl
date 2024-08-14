function generate_doubly_stochastic(N, X)
    # Step 1: Initialize NxN matrix TM
    TM = fill(1/N, N, N)
    
    # Step 2: Perform X iterations
    for _ in 1:X
        # Step 3: Draw random indices i1, j1, i2, j2
        i1, j1, i2, j2 = rand(1:N, 4)
        
        # Step 4: Draw random value d
        d = rand() * min(TM[i1, j1], TM[i2, j2])
        
        # Steps 5-8: Update matrix elements
        TM[i1, j1] -= d
        TM[i2, j2] -= d
        TM[i1, j2] += d
        TM[i2, j1] += d
    end
    
    return TM
end
