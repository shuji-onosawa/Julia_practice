function calc(s1, s2)
    # 消費支出 s1 円と飲食費 s2 円からエンゲル係数を計算する。
    return s2*100/s1
end

function engel()
    s1 = Base.prompt("消費支出? ")
    s2 = Base.prompt("飲食費? ")
    s1 = parse(Float64, s1)
    s2 = parse(Float64, s2)
    x1 = calc(s1, s2)
    if x1 >= 80
        println("エンゲル係数は ", round(Int, x1), 
                " です。飲食費を使いすぎです。")
    elseif x1 >= 40 && x1 < 80
        println("エンゲル係数は ", round(Int, x1), " です。\n正常です。")
    else
        println("エンゲル係数は ", round(Int, x1), " です。\nもっと食べましょう。")
    end    
end

engel()