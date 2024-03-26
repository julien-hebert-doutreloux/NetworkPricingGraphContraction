function compatible_union_not_brute_force(rules::Dict)
    all_unions = Dict{Int, Set{Set{String}}}() 
    
    # 1-union
    all_unions[1] = Set{Set{String}}([Set([k]) for k in keys(rules)])
    
    # 2-union
    all_unions[2] = Set{Set{String}}([Set([k, x]) for (k, v) in pairs(rules) for x in v if k != x])

	function compatible(x, y)
		return all(elem -> !(x ⊈ y[elem]), x)
	end


    function perform_unions_recursively(all_unions, n, rules)
        if n <= 2
            return
        end

        current_union_set = copy(all_unions[n - 1])
        next_union_set = Set{Set{String}}()

        while !isempty(current_union_set)
            u = pop!(current_union_set)
            for v in current_union_set
                union_result = u ∪ v
                if compatible(union_result, rules)
                    push!(next_union_set, union_result)
                end
            end
        end

        all_unions[n] = copy(next_union_set)

        if !isempty(next_union_set)
            perform_unions_recursively(all_unions, n + 1, rules)
        end
    end

    perform_unions_recursively(all_unions, 3, rules)
    
    return Set(union(values(all_unions)...))
end

# Example usage
test_rules = Dict(
    "e1" => Set(["e1", "e4", "e3", "e7"]),
    "e4" => Set(["e1", "e4", "e3", "e7"]),
    "e3" => Set(["e3", "e1", "e4"]),
    "e7" => Set(["e7", "e1", "e4"])
)

#include("test_rules.jl")


# time
elapsed_time = @elapsed result = compatible_union_not_brute_force(test_rules)
println("Elapsed time: $elapsed_time seconds")
println(join(result, '\n'))
