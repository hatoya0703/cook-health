class NutrientCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: "炭水化物" },
    { id: 2, name: "脂質" },
    { id: 3, name: "たんぱく質" },
    { id: 4, name: "ミネラル" },
    { id: 5, name: "ビタミン" },
    { id: 6, name: "その他" },
  ]
end
