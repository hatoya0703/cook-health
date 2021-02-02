class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: "カテゴリーを選択してください" },
    { id: 2, name: "ごはんもの" },
    { id: 3, name: "お肉のおかず" },
    { id: 4, name: "魚介のおかず" },
    { id: 5, name: "野菜のおかず" },
    { id: 6, name: "パスタ・グラタン" },
    { id: 7, name: "サラダ" },
    { id: 8, name: "麺" },
    { id: 9, name: "スープ・汁物" },
    { id: 10, name: "パン" },
    { id: 11, name: "その他" }
  ]
end
