class Progress < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '10%' },
    { id: 2, name: '20%' },
    { id: 3, name: '30%' },
    { id: 4, name: '40%' },
    { id: 5, name: '50%' },
    { id: 6, name: '60%' },
    { id: 7, name: '70%' },
    { id: 8, name: '80%' },
    { id: 9, name: '90%' },
    { id: 10, name: '100%' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks
end
