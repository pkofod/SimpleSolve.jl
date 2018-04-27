function fixedpoint(Γ, x, iterations = 10^5, r_norm = norm, r_abstol = sqrt(eps(eltype(x))))
    f = Γ(x)
    fnext = Γ(f)
    for i = 1:iterations
        if r_norm(fnext-f) <= r_abstol
            return fnext, f, :success
        end
        f = copy(fnext)
        fnext = Γ(f)
    end
    if r_norm(fnext-f) <= r_abstol
        return fnext, f, :success
    end
    fnext, f, :failure
end
