function calc(y1, y2)
    # 消費支出 s1 円と飲食費 s2 円からエンゲル係数を計算する。
    return y2*100/y1
end

s1 = 100000
s3 = 40000
println("消費支出 ",s1,"円に対するエンゲル係数の値")


while s3 <= 80000
    x1 = calc(s1, s3)
    println("   飲食費 ", s3, "円の場合: ", x1)
    global s3 = s3 + 5000 #global 必要
    
end

#globalはキモい（し、不具合の温床になる）のでできるだけ使わない方がよさそう、と考えると、
#Julia言語としては「できるだけ関数にしよう」という方向にユーザーを誘導していのでるのでは
#ないかと感じます。そういえば、関数化した方が実行も速くなることが多いです。
#（追記：公式スタイルガイドに「スクリプトではなく関数にせよ」と書いてありました）
#https://marui.hatenablog.com/entry/2019/08/09/115410