module SimpleSolve

import SolverStubs: nlsolve, fixedpoint, seqsolve

export nlsolve, fixedpoint, seqsolve

include("nlsolve.jl")
include("fixedpoint.jl")
include("seqsolve.jl")

end # module
