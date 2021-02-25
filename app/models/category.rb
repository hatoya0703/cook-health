class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: "ごはんもの" },
    { id: 2, name: "お肉のおかず" },
    { id: 3, name: "魚介のおかず" },
    { id: 4, name: "野菜のおかず" },
    { id: 5, name: "パスタ・グラタン" },
    { id: 6, name: "サラダ" },
    { id: 7, name: "麺" },
    { id: 8, name: "スープ・汁物" },
    { id: 9, name: "パン" },
    { id: 10, name: "その他" }
  ]
end
