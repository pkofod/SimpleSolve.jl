@testset "fixedpoints" begin
    A = [0.5 0; 0 0.2]
    b = [1.0; 2.0]
    f(x) = A * x + b

    x0 = rand(2)

    Γx, x, sc = fixedpoint(f, x0)

    @test sc == :success
    @test norm(Γx-x) <= sqrt(eps(eltype(x)))

    As = SMatrix{2,2}(0.5,0,0,0.2)
    bs = SVector(1.0, 2.0)
    xs0 = SVector(0.0, 0.0)
    fs(xs) = As * xs + bs

    Γxs, xs, scs = fixedpoint(fs, xs0)
    @test scs == :success
end
