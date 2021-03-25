class Status < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '未着手(確認中)' },
    { id: 2, name: '実施中' },
    { id: 3, name: '待機中(相手待ち)' },
    { id: 4, name: '完了' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks
end
