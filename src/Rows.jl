__precompile__(true)

module Rows

export rows, columns

rows(M::Matrix) = map(x->getindex(M, x, :)', 1:size(M)[1])
columns(M::Matrix) = map(x->getindex(M, :, x), 1:size(M)[2])

end # module
