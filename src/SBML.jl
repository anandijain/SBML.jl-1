module SBML

using SBML_jll, Libdl
using SparseArrays
using Symbolics

include("types.jl")
include("structs.jl")
include("version.jl")

include("converters.jl")
include("math.jl")
include("readsbml.jl")
include("symbolics.jl")
include("utils.jl")

sbml(sym::Symbol) = dlsym(SBML_jll.libsbml_handle, sym)

export SBMLVersion, readSBML, getS, getLBs, getUBs, getOCs
export set_level_and_version, libsbml_convert, convert_simplify_math

end # module
