function calc(spending)
    return spending*0.2, spending*0.4
end

spending = Base.prompt("支出")
spending = parse(Float64, spending)

x1, x2 = calc(spending)

println("支出が $spending のときエンゲル係数が 20-40 となる飲食費は $x1 - $x2")