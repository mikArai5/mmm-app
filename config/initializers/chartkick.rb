Chartkick.options = {
  donut: true, # ドーナツグラフ
  width: '400px',
  colors: [ "#769fcd",
            "#b9d7ea",
            "#d6e6f2",
            "#f7fbfc",
          ],
  message: {empty: "データがありません"},

  thousands: ",", 
  suffix: "円",
  legend: false, # 凡例非表示
  library: { # ここからHighchartsのオプション
    xAxis: [{
      categories: ['__','食費','日用品','美容・衣料品','教養','交際費','医療品','交通費','通信費','水道・光熱費','家関係','税金','趣味','大きな出費','その他']
    }],
    title: { # タイトル表示(ここでは、グラフの真ん中に配置して,viewでデータを渡しています。*後述)
      align: 'center',
      verticalAlign: 'middle',
    },
    chart: {
      backgroundColor: 'none',
      plotBorderWidth: 0, 
      plotShadow: false
    },

    plotOptions: {
      pie: {
        dataLabels: {
          enabled: true, 
          distance: -40, # ラベルの位置調節
          allowOverlap: false, # ラベルが重なったとき、非表示にする
          style: { #ラベルフォントの設定
            color: '#555', 
            textAlign: 'center', 
            textOutline: 0, #デフォルトではラベルが白枠で囲まれていてダサいので消す
          }
        },
        size: '110%',
        innerSize: '60%', # ドーナツグラフの中の円の大きさ
        borderWidth: 0,
      }
    },
  }
}
