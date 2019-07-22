10.times.each do
  recipe = Recipe.create(
    title: "ひんやり美味しい♡中華風茄子の冷や奴♪",
    description: "冷たく冷やした中華風の茄子と絹豆腐がよく合います♪スプーンですくって一緒にお口へどうぞ～(o´ω｀o)",
    image_url: "https://img.cpcdn.com/recipes/5725562/280x487s/a698819aecb7ad60054dc9346a609414.jpg?u=1228553&p=1562138939",
  )

  steps = [
    {
      description: "茄子はヘタをとったら乱切りにし、多めのごま油でじっくり柔らかくなるまで揚げ焼きにする。☆を密閉袋に合わせておく。",
    },
    {
      description: "この位しっかり焼きめがつき、中まで柔らかくなったら～",
    },
    {
      description: "１の袋にどんどん入れなじませしばらく口をあけたまま粗熱をとる。粗熱がとれたら空気を抜いて冷蔵庫で冷やす。"
    },
    {
      description: "器に豆腐を盛ったらバランスよく茄子も盛り付け漬け汁を適量かけ胡麻をふる。（画像はスプラウトを少し飾りました）"
    },
  ]

  ingredients = [
    {
      name: "茄子",
      amount: "3本",
    },
    {
      name: "ごま油",
      amount: "適量",
    },
    {
      name: "豆腐",
      amount: "適量",
    },
    {
      name: "醤油",
      amount: "大さじ1",
    },
  ]
  recipe.ingredients.create(ingredients)
  recipe.steps.create(steps)
end
