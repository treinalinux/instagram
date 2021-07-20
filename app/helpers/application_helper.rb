# frozen_string_literal: true

module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}", 'rb') { |file| raw(file.read) }
  end

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
end
