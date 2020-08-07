# ====== Code by Igor Malheiros - May of 2019 ====== #
# ====== Knapsack Problem using Greedy and Dynamic Programming approaches ====== #

import Base: isless

struct Item
    name::String
    value::Int64
    weight::Int64
end

isless(a::Item, b::Item) = isless(a.value/a.weight, b.value/b.weight)

function knapsackGreedy(itens::Array{Item}, capacity::Int)
    println("======= Greedy ======")
    sort!(itens, rev=true)
    knapsack = []
    load = 0
    total_value = 0

    for i in itens
        if ( (load+i.weight) <= capacity) 
            push!(knapsack, i)
            load += i.weight
            total_value += i.value
        end
    end
    println("Load: ", load, "/", capacity)
    println("Value: ", total_value)
    for i in knapsack
        println(i)
    end

    return
end

function knapsackDP(itens::Array{Item}, capacity::Int)
    println("======= DP ======")
    n = length(itens)
    memo = zeros(Int64, n+1, capacity+1)
    
    for i in 1:n+1
        for w in 1:capacity+1
            if (i == 1 || w == 1)
                memo[i,w] = 0
            elseif itens[i-1].weight <= w-1
                memo[i, w] = max(itens[i-1].value + memo[i-1, w - itens[i-1].weight],
                                 memo[i-1, w])
            else
                memo[i, w] = memo[i-1, w]
            end
        end
    end

    total_value = memo[n, capacity+1]
    println("Value: ", total_value)

    res = total_value
    w = capacity+1
    for i in (n+1:-1:1)
        if res <= 0
            break
        end

        if res == memo[i-1, w]
            continue
        else
            println(itens[i-1])
            res = res - itens[i-1].value
            w = w - itens[i-1].weight
        end
    end

    return
end    

capacity = 10
itens = Item[]
push!(itens, Item("Diamond", 25, 1) )
push!(itens, Item("Book", 8, 3) )
push!(itens, Item("Sword", 12, 9) )
push!(itens, Item("Stone", 15, 3) )
push!(itens, Item("Statue", 12, 7) )
push!(itens, Item("Bracelet", 15, 4) )
push!(itens, Item("Crown", 9, 3) )
push!(itens, Item("Vase", 10, 8) )
push!(itens, Item("Skull", 5, 5) )

knapsackGreedy(itens, capacity)
knapsackDP(itens, capacity)