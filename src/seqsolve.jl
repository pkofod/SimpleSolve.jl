function seqsolve(Γ, x, T)
    S = [Γ(x, T)]
    for t = T-1:-1:1
        push!(S, Γ(S[end], t))
    end
    reverse(S)
end
