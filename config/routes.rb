Rails.application.routes.draw do
  resources :wisdom_mods
  resources :weapons
  resources :weapon_types
  resources :users
  resources :undead_banes
  resources :thief_talents
  resources :strength_mods
  resources :spells
  resources :spell_types
  resources :spell_circles
  resources :skills
  resources :skill_types
  resources :roles
  resources :role_accesses
  resources :perks
  resources :perk_types
  resources :origins
  resources :material_types
  resources :language_types
  resources :items
  resources :item_types
  resources :intelligence_mods
  resources :expertises
  resources :element_types
  resources :effects
  resources :effect_types
  resources :dices
  resources :dexterity_mods
  resources :constitution_mods
  resources :charisma_mods
  resources :character_sheets
  resources :character_sheet_attributes
  resources :character_races
  resources :character_race_weapons
  resources :character_race_thief_talents
  resources :character_race_skills
  resources :character_race_perks
  resources :character_race_languages
  resources :character_race_armors
  resources :character_journals
  resources :character_expertises
  resources :character_classes
  resources :character_class_weapon_types
  resources :character_class_types
  resources :character_class_spell_types
  resources :character_class_requirements
  resources :character_class_magic_circles
  resources :character_class_item_types
  resources :character_class_evolutions
  resources :character_class_armor_types
  resources :campains
  resources :campain_members
  resources :campain_journals
  resources :armors
  resources :armor_types
  resources :alignments
  resources :alignments
  resources :armor_types
  resources :armors
  resources :campain_journals
  resources :campain_members
  resources :campains
  resources :character_class_armor_types
  resources :character_class_evolutions
  resources :character_class_item_types
  resources :character_class_magic_circles
  resources :character_class_requirements
  resources :character_class_spell_types
  resources :character_class_types
  resources :character_class_weapon_types
  resources :character_classes
  resources :character_expertises
  resources :character_journals
  resources :character_race_armors
  resources :character_race_languages
  resources :character_race_perks
  resources :character_race_skills
  resources :character_race_thief_talents
  resources :character_race_weapons
  resources :character_races
  resources :character_sheet_attributes
  resources :character_sheets
  resources :charisma_mods
  resources :constitution_mods
  resources :dexterity_mods
  resources :dices
  resources :effect_types
  resources :effects
  resources :element_types
  resources :expertises
  resources :intelligence_mods
  resources :item_types
  resources :items
  resources :language_types
  resources :material_types
  resources :origins
  resources :perk_types
  resources :perks
  resources :role_accesses
  resources :roles
  resources :skill_types
  resources :skills
  resources :spell_circles
  resources :spell_types
  resources :spells
  resources :strength_mods
  resources :thief_talents
  resources :timestamps
  resources :undead_banes
  resources :users
  resources :weapon_types
  resources :weapons
  resources :wisdom_mods

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
