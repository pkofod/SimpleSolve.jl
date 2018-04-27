function nlsolve(f, j, x, iterations = 10^5, r_norm = norm, r_abstol = sqrt(eps(eltype(x))))
    xnext = x
    r = f(x)
    for i = 1:iterations
        if r_norm(r) <= r_abstol
            return r, xnext, :success
        end
        x = copy(xnext)
        s = - j(x)\r
        xnext = x + s
        r = f(xnext)
    end
    if r_norm(r) <= r_abstol
        return r, xnext, :success
    end
    r, xnext, :failure
end
