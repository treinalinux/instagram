# Project Clone of Instagram

Project Clone of Instagram, this is excellent project to further improve Ruby on Rails knowledge.

### Ruby on Rails and JavaScript features

Several Ruby on Rails and JavaScript features were used.

**Among the features of Ruby on Rails are:**

- Active Storage
- Action Cable
- Devise
- i18n
- Other features of Rails


#### Commands rails used on project

```bash

rails new instagram -d postgresql --skip-turbolinks -T
rails db:create
rails db:migrate

rails generate scaffold post description 
rails db:migrate

rails generate devise:install
rails g devise:views
rails generate devise User
rails db:migrate

bundle add devise devise-i18n 
bundle add letter_opener

rails generate migration add_created_by_id_column_to_posts created_by:references
rails db:migrate

rails active_storage:install
rails db:migrate

bundle add active_storage_validations

rails generate model like post:references user:references
rails db:migrate

rails generate model comment post:references user:references body:text
rails db:migrate

rails generate controller comments create --skip-routes --skip-template-engine --skip-helper --skip-assets
rails action_text:install
rails db:migrate

rails generate channel post
rails db:migrate

rails generate channel comment
rails db:migrate

```

For details see [Gemfile](https://github.com/treinalinux/instagram/blob/main/Gemfile)

**Among the features of JavaScript are:**

- Modal
- CallBacks
- Toastify
- Other features of JavaScript

#### Commands yarn used on project

```bash

yarn add toastify-js
yarn add tingle.js

```

**Other features are:** 

- Redis

#### Commands redis used on project

```bash
redis-server --daemonize yes
```

---

**Avatar bug fix**

Bug fix on helper use `combine_options` rails 6.0 for 6.1

```ruby
  def user_avatar(user)
    avatar = if user.avatar.attached?
               user.avatar.variant(resize_to_fill: [100, 100])
               # BUG FIX - Rails 6.0 for 6.1
               # user.avatar.variant(combine_options: { resize: '100x100^', extent: '100x100' })
             else
               'default-avatar.jpg'
             end

    image_tag avatar, class: 'photo'
  end
```

---
**Source:**

[Lucas Caton](https://github.com/lucascaton)
