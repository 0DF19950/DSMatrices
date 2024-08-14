using Manifolds
using Plots
using LinearAlgebra

distr = MultinomialDoubleStochastic(4)


function system(x,y,z)
    # Define the conditions for the first system of inequalities
    cond_1 = x + y + z + 1 >= 0
    cond_2 = z+((x^2 +x*y+y+1)/(1+x+2y)) >=0
    # println(z+((x^2 +x*y+y+1)/(1+x+2y)))
    # Check which system of inequalities is satisfied
    if cond_1 && cond_2 
        return "System is satisfied"
    else
        return "System is not satisfied"
    end
end
