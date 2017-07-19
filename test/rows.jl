using Rows
using Base.Test

A = [1 2; 3 4; 5 6]

@test [[1 2], [3 4], [5 6]] == rows(A)
@test [1 2] == rows(A)[1]
@test [[1 2], [3 4]] == rows(A)[1:2]
@test [[1 2], [3 4], [5 6]] == rows(A)[1:end]
@test [[1 2], [3 4], [5 6]] == [row for row in rows(A)]

@test [[1; 3; 5], [2; 4; 6]] == columns(A)
@test [1; 3; 5] == columns(A)[1]
@test [[1; 3; 5], [2; 4; 6]] == columns(A)[1:end]
@test [[1; 3; 5], [2; 4; 6]] == [col for col in columns(A)]
