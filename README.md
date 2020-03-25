# README

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|-------|
|image|string|-------|
|group_id|references :groups|null: false, oreign_key: true|
|user_id|references :users|null: false, foreign_key: true|

## Association
- belongs_to :user
- belongs_to :group


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, unique:true|

### Association
- has_many :messages
- has_many :group_users
- has_many :groups, througth: :groups_users



## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :groups_users
- has_many :users, through: :groups_users


## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references :users|null: false, foreign_key: true |
|group_id|references :groups|null: false, foreign_key:true |

### Association
- belongs_to :group
- belongs_to :user
















