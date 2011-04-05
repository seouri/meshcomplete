Rails.application.routes.draw do
  mount_at = Meshcomplete::Engine.config.mount_at
  match mount_at + "meshcomplete" => "meshcomplete/meshcomplete#search"
end