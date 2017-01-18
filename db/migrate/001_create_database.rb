class CreateDatabase < ActiveRecord::Migration
  def self.up
    # create_table "alignments", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 15, null: false
    # end

    # create_table "armor_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "armors", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",               limit: 45,                             null: false
    #   t.string  "description",        limit: 500
    #   t.integer "armor_class",        limit: 4,                  default: 0, null: false
    #   t.integer "movement_reduction", limit: 4,                  default: 0
    #   t.decimal "price",                          precision: 10, default: 0, null: false
    #   t.integer "alignment_id",       limit: 8,                              null: false
    #   t.integer "armor_type_id",      limit: 8,                              null: false
    #   t.integer "origin_id",          limit: 8,                              null: false
    #   t.integer "user_id",            limit: 8,                              null: false
    # end

    # add_index "armors", ["alignment_id"], name: "fk_armor_alignment1_idx", using: :btree
    # add_index "armors", ["armor_type_id"], name: "fk_armor_armor_type_idx", using: :btree
    # add_index "armors", ["origin_id"], name: "fk_armor_origin1_idx", using: :btree
    # add_index "armors", ["user_id"], name: "fk_armor_user1_idx", using: :btree

    # create_table "campain_journals", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string   "description", limit: 45
    #   t.boolean  "idactive",               default: true, null: false
    #   t.datetime "log_date",                              null: false
    #   t.integer  "campain_id",  limit: 8,                 null: false
    # end

    # add_index "campain_journals", ["campain_id"], name: "fk_campain_info_campain1_idx", using: :btree

    # create_table "campain_members", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "campain_id",         limit: 8,                null: false
    #   t.integer "character_sheet_id", limit: 8,                null: false
    #   t.boolean "idactive",                     default: true, null: false
    # end

    # add_index "campain_members", ["campain_id"], name: "fk_campain_has_character_sheet_campain1_idx", using: :btree
    # add_index "campain_members", ["character_sheet_id"], name: "fk_campain_has_character_sheet_character_sheet1_idx", using: :btree

    # create_table "campains", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string   "title",           limit: 45,    null: false
    #   t.text     "description",     limit: 65535
    #   t.datetime "start_date",                    null: false
    #   t.datetime "conclusion_date"
    #   t.integer  "user_id",         limit: 8,     null: false
    # end

    # add_index "campains", ["user_id"], name: "fk_campain_system_user1_idx", using: :btree

    # create_table "character_class_armor_type", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_class_id", limit: 8, null: false
    #   t.integer "armor_type_id",      limit: 8, null: false
    # end

    # add_index "character_class_armor_type", ["armor_type_id"], name: "fk_class_base_has_armor_type_armor_type1_idx", using: :btree
    # add_index "character_class_armor_type", ["character_class_id"], name: "fk_class_base_has_armor_type_class_base1_idx", using: :btree

    # create_table "character_class_evolutions", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "level",              limit: 4, default: 1, null: false
    #   t.integer "exp",                limit: 8,             null: false
    #   t.integer "life_amount",        limit: 4,             null: false
    #   t.boolean "plus_life",                                null: false
    #   t.integer "attack_base",        limit: 4,             null: false
    #   t.integer "attack_base2",       limit: 4, default: 0, null: false
    #   t.integer "protection_mod",     limit: 4,             null: false
    #   t.integer "character_class_id", limit: 8,             null: false
    # end

    # add_index "character_class_evolutions", ["character_class_id"], name: "fk_occupation_level_occupation1_idx", using: :btree

    # create_table "character_class_item_types", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_class_id", limit: 8, null: false
    #   t.integer "item_type_id",       limit: 8, null: false
    # end

    # add_index "character_class_item_types", ["character_class_id"], name: "fk_class_base_has_item_type_class_base1_idx", using: :btree
    # add_index "character_class_item_types", ["item_type_id"], name: "fk_class_base_has_item_type_item_type1_idx", using: :btree

    # create_table "character_class_magic_circles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "level",              limit: 4, default: 1, null: false
    #   t.integer "magic_circle_1",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_2",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_3",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_4",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_5",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_6",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_7",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_8",     limit: 4, default: 0, null: false
    #   t.integer "magic_circle_9",     limit: 4, default: 0, null: false
    #   t.integer "character_class_id", limit: 8,             null: false
    # end

    # add_index "character_class_magic_circles", ["character_class_id"], name: "fk_occupation_level_occupation1_idx", using: :btree

    # create_table "character_class_requirements", primary_key: "character_class_id", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "str_mod",  limit: 4, default: 0, null: false
    #   t.integer "dex_mod",  limit: 4, default: 0, null: false
    #   t.integer "cons_mod", limit: 4, default: 0, null: false
    #   t.integer "int_mod",  limit: 4, default: 0, null: false
    #   t.integer "wis_mod",  limit: 4, default: 0, null: false
    #   t.integer "char_mod", limit: 4, default: 0, null: false
    # end

    # create_table "character_class_spell_types", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_class_id", limit: 8, null: false
    #   t.integer "spell_type_id",      limit: 8, null: false
    # end

    # add_index "character_class_spell_types", ["character_class_id"], name: "fk_class_base_has_spell_category_class_base1_idx", using: :btree
    # add_index "character_class_spell_types", ["spell_type_id"], name: "fk_class_base_has_spell_category_spell_category1_idx", using: :btree

    # create_table "character_class_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",              limit: 45,                 null: false
    #   t.boolean "magic",                        default: false, null: false
    #   t.integer "protection",        limit: 4,                  null: false
    #   t.string  "key_attr",          limit: 4,  default: "",    null: false
    #   t.boolean "can_bane_undead",              default: false, null: false
    #   t.boolean "has_thief_talents",            default: false, null: false
    # end

    # create_table "character_class_weapon_types", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_class_id", limit: 8, null: false
    #   t.integer "weapon_type_id",     limit: 8, null: false
    # end

    # add_index "character_class_weapon_types", ["character_class_id"], name: "fk_class_base_has_weapon_type_class_base1_idx", using: :btree
    # add_index "character_class_weapon_types", ["weapon_type_id"], name: "fk_class_base_has_weapon_type_weapon_type1_idx", using: :btree

    # create_table "character_classes", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",                    limit: 45,  null: false
    #   t.string  "description",             limit: 500
    #   t.integer "dice_id",                 limit: 8,   null: false
    #   t.integer "perk_id",                 limit: 8
    #   t.integer "character_class_type_id", limit: 8,   null: false
    #   t.integer "user_id",                 limit: 8,   null: false
    # end

    # add_index "character_classes", ["character_class_type_id"], name: "fk_class_base_class_type1_idx", using: :btree
    # add_index "character_classes", ["dice_id"], name: "fk_class_base_dice1_idx", using: :btree
    # add_index "character_classes", ["perk_id"], name: "fk_class_base_perk1_idx", using: :btree
    # add_index "character_classes", ["user_id"], name: "fk_class_base_user1_idx", using: :btree

    # create_table "character_expertises", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_sheet_id", limit: 8, null: false
    #   t.integer "expertise_id",       limit: 8, null: false
    # end

    # add_index "character_expertises", ["character_sheet_id"], name: "fk_character_sheet_has_expertise_character_sheet1_idx", using: :btree
    # add_index "character_expertises", ["expertise_id"], name: "fk_character_sheet_has_expertise_expertise1_idx", using: :btree

    # create_table "character_journals", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer  "current_level",      limit: 4
    #   t.integer  "current_exp",        limit: 4
    #   t.boolean  "idactive",                     default: true, null: false
    #   t.datetime "inc_date",                                    null: false
    #   t.integer  "character_sheet_id", limit: 8,                null: false
    #   t.integer  "alignment_id",       limit: 8,                null: false
    # end

    # add_index "character_journals", ["alignment_id"], name: "fk_character_info_alignment1_idx", using: :btree
    # add_index "character_journals", ["character_sheet_id"], name: "fk_character_info_character_sheet1_idx", using: :btree

    # create_table "character_race_armors", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "armor_type_id",     limit: 8, null: false
    #   t.integer "character_race_id", limit: 8, null: false
    # end

    # add_index "character_race_armors", ["armor_type_id"], name: "fk_race_has_armor_type_armor_type1_idx", using: :btree
    # add_index "character_race_armors", ["character_race_id"], name: "fk_race_has_armor_type_race1_idx", using: :btree

    # create_table "character_race_languages", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_race_id", limit: 8, null: false
    #   t.integer "language_type_id",  limit: 8, null: false
    # end

    # add_index "character_race_languages", ["character_race_id"], name: "fk_race_has_language_type_race1_idx", using: :btree
    # add_index "character_race_languages", ["language_type_id"], name: "fk_race_has_language_type_language_type1_idx", using: :btree

    # create_table "character_race_perks", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_race_id", limit: 8, null: false
    #   t.integer "perk_id",           limit: 8, null: false
    # end

    # add_index "character_race_perks", ["character_race_id"], name: "fk_race_has_perk_race1_idx", using: :btree
    # add_index "character_race_perks", ["perk_id"], name: "fk_race_has_perk_perk1_idx", using: :btree

    # create_table "character_race_skills", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_race_id", limit: 8, null: false
    #   t.integer "skill_id",          limit: 8, null: false
    # end

    # add_index "character_race_skills", ["character_race_id"], name: "fk_race_has_skill_race1_idx", using: :btree
    # add_index "character_race_skills", ["skill_id"], name: "fk_race_has_skill_skill1_idx", using: :btree

    # create_table "character_race_thief_talents", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "id",                  limit: 8,                 null: false
    #   t.integer "lockpick_mod",        limit: 4,                 null: false
    #   t.integer "find_traps_mod",      limit: 4,                 null: false
    #   t.integer "climb_mod",           limit: 4,                 null: false
    #   t.integer "silent_movement_mod", limit: 4,                 null: false
    #   t.integer "stealth_mod",         limit: 4,                 null: false
    #   t.integer "pickpocket_mod",      limit: 4,                 null: false
    #   t.string  "hear_noises_mod",     limit: 3, default: "1-1", null: false
    #   t.string  "backstab_mod",        limit: 2, default: "x2",  null: false
    #   t.integer "character_race_id",   limit: 8,                 null: false
    # end

    # add_index "character_race_thief_talents", ["character_race_id"], name: "fk_character_race_thief_talents_character_race1_idx", using: :btree

    # create_table "character_race_weapons", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "character_race_id", limit: 8, null: false
    #   t.integer "weapon_type_id",    limit: 8, null: false
    # end

    # add_index "character_race_weapons", ["character_race_id"], name: "fk_race_has_weapon_type_race1_idx", using: :btree
    # add_index "character_race_weapons", ["weapon_type_id"], name: "fk_race_has_weapon_type_weapon_type1_idx", using: :btree

    # create_table "character_races", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",            limit: 45,                            null: false
    #   t.decimal "min_height",                 precision: 10, default: 0
    #   t.decimal "max_height",                 precision: 10, default: 0
    #   t.decimal "min_weight",                 precision: 10
    #   t.decimal "max_weight",                 precision: 10
    #   t.integer "maturity",        limit: 4
    #   t.integer "max_age",         limit: 4
    #   t.integer "movement_base",   limit: 4,                 default: 1, null: false
    #   t.integer "armor_class_mod", limit: 4,                 default: 0, null: false
    #   t.integer "str_mod",         limit: 4,                 default: 0, null: false
    #   t.integer "dex_mod",         limit: 4,                 default: 0, null: false
    #   t.integer "cons_mod",        limit: 4,                 default: 0, null: false
    #   t.integer "int_mod",         limit: 4,                 default: 0, null: false
    #   t.integer "wis_mod",         limit: 4,                 default: 0, null: false
    #   t.integer "char_mod",        limit: 4,                 default: 0, null: false
    #   t.integer "alignment_id",    limit: 8,                             null: false
    #   t.integer "dice_id",         limit: 8
    #   t.integer "user_id",         limit: 8,                             null: false
    # end

    # add_index "character_races", ["alignment_id"], name: "fk_race_alignment1_idx", using: :btree
    # add_index "character_races", ["dice_id"], name: "fk_race_dice1_idx", using: :btree
    # add_index "character_races", ["user_id"], name: "fk_race_user1_idx", using: :btree

    # create_table "character_sheet_attributes", primary_key: "character_sheet_id", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "strength",     limit: 4, default: 0, null: false
    #   t.integer "dexterity",    limit: 4, default: 0, null: false
    #   t.integer "constitution", limit: 4, default: 0, null: false
    #   t.integer "intelligence", limit: 4, default: 0, null: false
    #   t.integer "wisdom",       limit: 4, default: 0, null: false
    #   t.integer "charisma",     limit: 4, default: 0, null: false
    # end

    # create_table "character_sheets", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",               limit: 45
    #   t.decimal "weight",                           precision: 10
    #   t.decimal "height",                           precision: 10
    #   t.integer "age",                limit: 4
    #   t.text    "description",        limit: 65535
    #   t.integer "character_class_id", limit: 8,                    null: false
    #   t.integer "character_race_id",  limit: 8,                    null: false
    #   t.integer "user_id",            limit: 8,                    null: false
    # end

    # add_index "character_sheets", ["character_class_id"], name: "fk_character_sheet_class_base1_idx", using: :btree
    # add_index "character_sheets", ["character_race_id"], name: "fk_character_sheet_race1_idx", using: :btree
    # add_index "character_sheets", ["user_id"], name: "fk_character_sheet_system_user1_idx", using: :btree

    # create_table "charisma_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",         limit: 4,                null: false
    #   t.integer "followers_mod", limit: 4,  default: 0,   null: false
    #   t.integer "reaction_mod",  limit: 4,  default: 0,   null: false
    #   t.string  "undead_mod",    limit: 10, default: "0", null: false
    # end

    # create_table "constitution_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",            limit: 4,             null: false
    #   t.integer "hitpoints_mod",    limit: 4, default: 0, null: false
    #   t.integer "protection_mod",   limit: 4, default: 0, null: false
    #   t.integer "resurrection_mod", limit: 4, default: 0, null: false
    # end

    # create_table "dexterity_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",               limit: 4,             null: false
    #   t.integer "attack_mod",          limit: 4, default: 0, null: false
    #   t.integer "surprise_mod",        limit: 4, default: 0, null: false
    #   t.integer "armor_class_mod",     limit: 4, default: 0, null: false
    #   t.integer "protection_mod",      limit: 4, default: 0, null: false
    #   t.integer "find_traps_mod",      limit: 4, default: 0, null: false
    #   t.integer "silent_movement_mod", limit: 4, default: 0, null: false
    #   t.integer "lockpick_mod",        limit: 4, default: 0, null: false
    #   t.integer "stealth_mod",         limit: 4, default: 0, null: false
    #   t.integer "pickpocket_mod",      limit: 4, default: 0, null: false
    # end

    # create_table "dices", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 4, null: false
    # end

    # create_table "effect_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "effects", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",           limit: 45
    #   t.string  "description",    limit: 500
    #   t.integer "effect_type_id", limit: 8,   null: false
    #   t.integer "user_id",        limit: 8,   null: false
    # end

    # add_index "effects", ["effect_type_id"], name: "fk_effect_effect_type1_idx", using: :btree
    # add_index "effects", ["user_id"], name: "fk_effect_user1_idx", using: :btree

    # create_table "element_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "expertises", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela de Perícias'" do |t|
    #   t.string  "name",     limit: 45
    #   t.integer "modifier", limit: 4
    #   t.string  "attr",     limit: 4
    #   t.integer "user_id",  limit: 8,  null: false
    # end

    # add_index "expertises", ["user_id"], name: "fk_expertise_user1_idx", using: :btree

    # create_table "intelligence_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",              limit: 4,             null: false
    #   t.integer "languages_mod",      limit: 4, default: 0, null: false
    #   t.integer "learn_magic_mod",    limit: 4, default: 0, null: false
    #   t.integer "magic_circle_1_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_2_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_3_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_4_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_5_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_6_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_7_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_8_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_circle_9_mod", limit: 4, default: 0, null: false
    # end

    # create_table "item_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "items", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",         limit: 45,                 null: false
    #   t.string  "description",  limit: 500
    #   t.decimal "weight",                   precision: 10
    #   t.integer "price",        limit: 4
    #   t.integer "item_type_id", limit: 8,                  null: false
    #   t.integer "user_id",      limit: 8,                  null: false
    # end

    # add_index "items", ["item_type_id"], name: "fk_item_item_type1_idx", using: :btree
    # add_index "items", ["user_id"], name: "fk_item_user1_idx", using: :btree

    # create_table "language_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name",        limit: 45,    null: false
    #   t.text   "description", limit: 65535
    # end

    # create_table "material_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45
    # end

    # create_table "origins", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",      limit: 45,             null: false
    #   t.string  "variation", limit: 45,             null: false
    #   t.integer "bonus",     limit: 4,  default: 0, null: false
    # end

    # create_table "perk_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "perks", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela de Vantagens'" do |t|
    #   t.string  "name",         limit: 45
    #   t.string  "description",  limit: 500
    #   t.integer "perk_type_id", limit: 8,   null: false
    #   t.integer "user_id",      limit: 8,   null: false
    # end

    # add_index "perks", ["perk_type_id"], name: "fk_perk_perk_type1_idx", using: :btree
    # add_index "perks", ["user_id"], name: "fk_perk_user1_idx", using: :btree

    # create_table "role_accesses", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "id_menu_item", limit: 8, null: false
    #   t.integer "role_id",      limit: 8, null: false
    # end

    # add_index "role_accesses", ["role_id"], name: "fk_menu_item_has_role_role1_idx", using: :btree

    # create_table "roles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",  limit: 45,                 null: false
    #   t.boolean "admin",            default: false, null: false
    # end

    # create_table "skill_types", id: :integer, limit: 8, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "skills", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",          limit: 45
    #   t.string  "description",   limit: 500
    #   t.integer "effect_id",     limit: 8
    #   t.integer "skill_type_id", limit: 8,   null: false
    #   t.integer "user_id",       limit: 8,   null: false
    # end

    # add_index "skills", ["effect_id"], name: "fk_skill_effect1_idx", using: :btree
    # add_index "skills", ["skill_type_id"], name: "fk_skill_skill_type1_idx", using: :btree
    # add_index "skills", ["user_id"], name: "fk_skill_user1_idx", using: :btree

    # create_table "spell_circles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "circle",        limit: 4, default: 0, null: false
    #   t.integer "spell_type_id", limit: 8,             null: false
    # end

    # add_index "spell_circles", ["spell_type_id"], name: "fk_spell_circle_spell_class1_idx", using: :btree

    # create_table "spell_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "spells", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",            limit: 45,  null: false
    #   t.string  "range",           limit: 45,  null: false
    #   t.string  "duration",        limit: 45,  null: false
    #   t.string  "description",     limit: 500, null: false
    #   t.integer "effect_id",       limit: 8,   null: false
    #   t.integer "element_type_id", limit: 8,   null: false
    #   t.integer "spell_circle_id", limit: 8,   null: false
    #   t.integer "user_id",         limit: 8,   null: false
    # end

    # add_index "spells", ["effect_id"], name: "fk_spell_effect1_idx", using: :btree
    # add_index "spells", ["element_type_id"], name: "fk_spell_element_type1_idx", using: :btree
    # add_index "spells", ["spell_circle_id"], name: "fk_spell_spell_circle1_idx", using: :btree
    # add_index "spells", ["user_id"], name: "fk_spell_user1_idx", using: :btree

    # create_table "strength_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",      limit: 4,             null: false
    #   t.integer "attack_mod", limit: 4, default: 0, null: false
    #   t.integer "damage_mod", limit: 4, default: 0, null: false
    # end

    # create_table "thief_talents", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "level",           limit: 4,                 null: false
    #   t.integer "lockpick",        limit: 4,                 null: false
    #   t.integer "find_traps",      limit: 4,                 null: false
    #   t.integer "climb",           limit: 4,                 null: false
    #   t.integer "silent_movement", limit: 4,                 null: false
    #   t.integer "stealth",         limit: 4,                 null: false
    #   t.integer "pickpocket",      limit: 4,                 null: false
    #   t.string  "hear_noises",     limit: 3, default: "1-1", null: false
    #   t.string  "backstab",        limit: 2, default: "x2",  null: false
    # end

    # create_table "timestamps", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.datetime "create_time"
    #   t.datetime "update_time"
    # end

    # create_table "undead_banes", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "level",         limit: 4, default: 1,   null: false
    #   t.string  "skelleton_mod", limit: 2, default: "N", null: false
    #   t.string  "zombie_mod",    limit: 2, default: "N", null: false
    #   t.string  "ghoul_mod",     limit: 2, default: "N", null: false
    #   t.string  "inhuman_mod",   limit: 2, default: "N", null: false
    #   t.string  "aparition_mod", limit: 2, default: "N", null: false
    #   t.string  "mummy_mod",     limit: 2, default: "N", null: false
    #   t.string  "specter_mod",   limit: 2, default: "N", null: false
    #   t.string  "vampire_mod",   limit: 2, default: "N", null: false
    # end

    # create_table "users", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string   "name",       limit: 45, null: false
    #   t.string   "login",      limit: 45, null: false
    #   t.string   "pass",       limit: 64, null: false
    #   t.datetime "inc_date",              null: false
    #   t.datetime "last_login"
    #   t.string   "email",      limit: 64
    #   t.integer  "role_id",    limit: 8,  null: false
    # end

    # add_index "users", ["role_id"], name: "fk_system_user_profile1_idx", using: :btree

    # create_table "weapon_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string "name", limit: 45, null: false
    # end

    # create_table "weapons", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.string  "name",             limit: 45,                                 null: false
    #   t.string  "description",      limit: 500
    #   t.integer "initiative",       limit: 4,                  default: 0,     null: false
    #   t.boolean "ranged",                                      default: false, null: false
    #   t.integer "range",            limit: 4,                  default: 0,     null: false
    #   t.string  "damage",           limit: 45,                                 null: false
    #   t.decimal "weight",                       precision: 10,                 null: false
    #   t.decimal "price",                        precision: 10,                 null: false
    #   t.integer "alignment_id",     limit: 8,                                  null: false
    #   t.integer "dice_id",          limit: 8,                                  null: false
    #   t.integer "material_type_id", limit: 8,                                  null: false
    #   t.integer "origin_id",        limit: 8,                                  null: false
    #   t.integer "user_id",          limit: 8,                                  null: false
    #   t.integer "weapon_type_id",   limit: 8,                                  null: false
    # end

    # add_index "weapons", ["alignment_id"], name: "fk_weapon_alignment1_idx", using: :btree
    # add_index "weapons", ["dice_id"], name: "fk_weapon_dice1_idx", using: :btree
    # add_index "weapons", ["material_type_id"], name: "fk_weapon_material_type1_idx", using: :btree
    # add_index "weapons", ["origin_id"], name: "fk_weapon_origin1_idx", using: :btree
    # add_index "weapons", ["user_id"], name: "fk_weapon_user1_idx", using: :btree
    # add_index "weapons", ["weapon_type_id"], name: "fk_weapon_weapon_type1_idx", using: :btree

    # create_table "wisdom_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    #   t.integer "value",             limit: 4,             null: false
    #   t.integer "protection_mod",    limit: 4, default: 0, null: false
    #   t.integer "magic_cicle_1_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_cicle_2_mod", limit: 4, default: 0, null: false
    #   t.integer "magic_cicle_3_mod", limit: 4, default: 0, null: false
    # end

    # add_foreign_key "armors", "alignments", name: "fk_armor_alignment1"
    # add_foreign_key "armors", "armor_types", name: "fk_armor_armor_type"
    # add_foreign_key "armors", "origins", name: "fk_armor_origin1"
    # add_foreign_key "armors", "users", name: "fk_armor_user1"
    # add_foreign_key "campain_journals", "campains", name: "fk_campain_info_campain1"
    # add_foreign_key "campain_members", "campains", name: "fk_campain_has_character_sheet_campain1"
    # add_foreign_key "campain_members", "character_sheets", name: "fk_campain_has_character_sheet_character_sheet1"
    # add_foreign_key "campains", "users", name: "fk_campain_system_user1"
    # add_foreign_key "character_class_armor_type", "armor_types", name: "fk_occupation_has_armor_type_armor_type1"
    # add_foreign_key "character_class_armor_type", "character_classes", name: "fk_occupation_has_armor_type_occupation1"
    # add_foreign_key "character_class_evolutions", "character_classes", name: "fk_occupation_level_occupation1"
    # add_foreign_key "character_class_item_types", "character_classes", name: "fk_occupation_has_item_type_occupation1"
    # add_foreign_key "character_class_item_types", "item_types", name: "fk_occupation_has_item_type_item_type1"
    # add_foreign_key "character_class_magic_circles", "character_classes", name: "fk_occupation_level_occupation10"
    # add_foreign_key "character_class_requirements", "character_classes", name: "fk_character_class_requirement_character_class1"
    # add_foreign_key "character_class_spell_types", "character_classes", name: "fk_occupation_has_spell_category_occupation1"
    # add_foreign_key "character_class_spell_types", "spell_types", name: "fk_occupation_has_spell_category_spell_category1"
    # add_foreign_key "character_class_weapon_types", "character_classes", name: "fk_occupation_has_weapon_type_occupation1"
    # add_foreign_key "character_class_weapon_types", "weapon_types", name: "fk_occupation_has_weapon_type_weapon_type1"
    # add_foreign_key "character_classes", "character_class_types", name: "fk_class_base_class_type1"
    # add_foreign_key "character_classes", "dices", name: "fk_class_base_dice1"
    # add_foreign_key "character_classes", "perks", name: "fk_class_base_perk1"
    # add_foreign_key "character_classes", "users", name: "fk_class_base_user1"
    # add_foreign_key "character_expertises", "character_sheets", name: "fk_character_sheet_has_expertise_character_sheet1"
    # add_foreign_key "character_expertises", "expertises", name: "fk_character_sheet_has_expertise_expertise1"
    # add_foreign_key "character_journals", "alignments", name: "fk_character_info_alignment1"
    # add_foreign_key "character_journals", "character_sheets", name: "fk_character_info_character_sheet1"
    # add_foreign_key "character_race_armors", "armor_types", name: "fk_breed_has_armor_type_armor_type1"
    # add_foreign_key "character_race_armors", "character_races", name: "fk_breed_has_armor_type_breed1"
    # add_foreign_key "character_race_languages", "character_races", name: "fk_breed_has_language_type_breed1"
    # add_foreign_key "character_race_languages", "language_types", name: "fk_breed_has_language_type_language_type1"
    # add_foreign_key "character_race_perks", "character_races", name: "fk_breed_has_perk_breed1"
    # add_foreign_key "character_race_perks", "perks", name: "fk_breed_has_perk_perk1"
    # add_foreign_key "character_race_skills", "character_races", name: "fk_breed_has_skill_breed1"
    # add_foreign_key "character_race_skills", "skills", name: "fk_breed_has_skill_skill1"
    # add_foreign_key "character_race_thief_talents", "character_races", name: "fk_character_race_thief_talents_character_race1"
    # add_foreign_key "character_race_weapons", "character_races", name: "fk_breed_has_weapon_type_breed1"
    # add_foreign_key "character_race_weapons", "weapon_types", name: "fk_breed_has_weapon_type_weapon_type1"
    # add_foreign_key "character_races", "alignments", name: "fk_race_alignment1"
    # add_foreign_key "character_races", "dices", name: "fk_race_dice1"
    # add_foreign_key "character_races", "users", name: "fk_race_user1"
    # add_foreign_key "character_sheet_attributes", "character_sheets", name: "fk_character_sheet_attributes_character_sheet1"
    # add_foreign_key "character_sheets", "character_classes", name: "fk_character_sheet_occupation1"
    # add_foreign_key "character_sheets", "character_races", name: "fk_character_sheet_breed1"
    # add_foreign_key "character_sheets", "users", name: "fk_character_sheet_system_user1"
    # add_foreign_key "effects", "effect_types", name: "fk_effect_effect_type1"
    # add_foreign_key "effects", "users", name: "fk_effect_user1"
    # add_foreign_key "expertises", "users", name: "fk_expertise_user1"
    # add_foreign_key "items", "item_types", name: "fk_item_item_type1"
    # add_foreign_key "items", "users", name: "fk_item_user1"
    # add_foreign_key "perks", "perk_types", name: "fk_perk_perk_type1"
    # add_foreign_key "perks", "users", name: "fk_perk_user1"
    # add_foreign_key "role_accesses", "roles", name: "fk_menu_item_has_role_role1"
    # add_foreign_key "skills", "effects", name: "fk_skill_effect1"
    # add_foreign_key "skills", "skill_types", name: "fk_skill_skill_type1"
    # add_foreign_key "skills", "users", name: "fk_skill_user1"
    # add_foreign_key "spell_circles", "spell_types", name: "fk_spell_circle_spell_class1"
    # add_foreign_key "spells", "effects", name: "fk_spell_effect1"
    # add_foreign_key "spells", "element_types", name: "fk_spell_element_type1"
    # add_foreign_key "spells", "spell_circles", name: "fk_spell_spell_circle1"
    # add_foreign_key "spells", "users", name: "fk_spell_user1"
    # add_foreign_key "users", "roles", name: "fk_system_user_role1"
    # add_foreign_key "weapons", "alignments", name: "fk_weapon_alignment1"
    # add_foreign_key "weapons", "dices", name: "fk_weapon_dice1"
    # add_foreign_key "weapons", "material_types", name: "fk_weapon_material_type1"
    # add_foreign_key "weapons", "origins", name: "fk_weapon_origin1"
    # add_foreign_key "weapons", "users", name: "fk_weapon_user1"
    # add_foreign_key "weapons", "weapon_types", name: "fk_weapon_weapon_type1"
  end
end
