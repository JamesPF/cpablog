module ApplicationHelper

  # Configures custom titles for the application and blog posts
  # If no custom title is set, then it defaults to "Michael Felz PC"
  def title(title = nil)
    if title.present?
      content_for :title, title
    else
      content_for?(:title) ? content_for(:title) + ' | ' + APP_CONFIG['default_title'] : APP_CONFIG['default_title']
    end
  end

  # Configures custom meta descriptions for the application and blog posts
  # If no custom meta description is set, then it defaults to an empty string
  def meta_description(desc = nil)
    if desc.present?
      content_for :meta_description, desc
    else
      content_for?(:meta_description) ? content_for(:meta_description) : APP_CONFIG['meta_description']
    end
  end

end
