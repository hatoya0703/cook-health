class NutrientCategory < ActiveHash::Base
  self.data = [
    { id: 1, category_name: "炭水化物" },
    { id: 2, category_name: "脂質" },
    { id: 3, category_name: "たんぱく質" },
    { id: 4, category_name: "ミネラル" },
    { id: 5, category_name: "ビタミン" },
    { id: 6, category_name: "その他" },
  ]
end