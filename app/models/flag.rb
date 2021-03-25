class Flag < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '問題なし(順調)' },
    { id: 2, name: '問題あり(自己解決中)' },
    { id: 3, name: '問題あり(要相談)' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks
end
