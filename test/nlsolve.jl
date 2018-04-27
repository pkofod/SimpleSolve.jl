@testset "nlsolve" begin
    f(x) = x^2 + 3x + 1
    j(x) = 2x + 3

    r, x, s = nlsolve(f, j, -2.5)
    @test s == :success

    r, x, s = nlsolve(f, j, -1.0)
    @test s == :success
end
