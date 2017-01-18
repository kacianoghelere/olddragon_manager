rails generate scaffold Alignment name:string --no-migration

rails generate scaffold ArmorType name:string --no-migration

rails generate scaffold Armor name:string description:string armor_class:integer movement_reduction:integer price:decimal alignment:references armor_type:references origin:references user:references --no-migration

rails generate scaffold CampainJournal description:string idactive:boolean log_date:datetime campain:references --no-migration

rails generate scaffold CampainMember campain:references character_sheet:references idactive:boolean --no-migration

rails generate scaffold Campain title:string description:text start_date:datetime conclusion_date:datetime user:references --no-migration

rails generate scaffold CharacterClassArmorType character_class:references armor_type:references --no-migration

rails generate scaffold CharacterClassEvolution level:integer exp:integer life_amount:integer plus_life:boolean attack_base:integer attack_base2:integer protection_mod:integer character_class:references --no-migration

rails generate scaffold CharacterClassItemType character_class:references item_type:references --no-migration

rails generate scaffold CharacterClassMagicCircle level:integer magic_circle_1:integer magic_circle_2:integer magic_circle_3:integer magic_circle_4:integer magic_circle_5:integer magic_circle_6:integer magic_circle_7:integer magic_circle_8:integer magic_circle_9:integer character_class:references --no-migration

rails generate scaffold CharacterClassRequirement str_mod:integer dex_mod:integer cons_mod:integer int_mod:integer wis_mod:integer char_mod:integer character_classes:references --no-migration

rails generate scaffold CharacterClassSpellType character_class:references spell_type:references --no-migration

rails generate scaffold CharacterClassType name:string magic:boolean protection:integer key_attr:string can_bane_undead:boolean has_thief_talents:boolean --no-migration

rails generate scaffold CharacterClassWeaponType character_class:references weapon_type:references --no-migration

rails generate scaffold CharacterClass name:string description:string dice:references perk:references character_class_type:references user:references --no-migration

rails generate scaffold CharacterExpertise character_sheet:references expertise:references --no-migration

rails generate scaffold CharacterJournal current_level:integer current_exp:integer idactive:boolean inc_date:datetime character_sheet:references alignment:references --no-migration

rails generate scaffold CharacterRaceArmor armor_type:references character_race:references --no-migration

rails generate scaffold CharacterRaceLanguage character_race:references language_type:references --no-migration

rails generate scaffold CharacterRacePerk character_race:references perk:references --no-migration

rails generate scaffold CharacterRaceSkill character_race:references skill:references --no-migration

rails generate scaffold CharacterRaceThiefTalent id:integer lockpick_mod:integer find_traps_mod:integer climb_mod:integer silent_movement_mod:integer stealth_mod:integer pickpocket_mod:integer hear_noises_mod:string backstab_mod:string character_race:references --no-migration

rails generate scaffold CharacterRaceWeapon character_race:references weapon_type:references --no-migration

rails generate scaffold CharacterRace name:string min_height:decimal max_height:decimal min_weight:decimal max_weight:decimal maturity:integer max_age:integer movement_base:integer armor_class_mod:integer str_mod:integer dex_mod:integer cons_mod:integer int_mod:integer wis_mod:integer char_mod:integer alignment:references dice:references user:references --no-migration

rails generate scaffold CharacterSheetAttribute strength:integer dexterity:integer constitution:integer intelligence:integer wisdom:integer charisma:integer --no-migration

rails generate scaffold CharacterSheet name:string weight:decimal height:decimal age:integer description:text character_class:references character_race:references user:references --no-migration

rails generate scaffold CharismaMod value:integer followers_mod:integer reaction_mod:integer undead_mod:string --no-migration

rails generate scaffold ConstitutionMod value:integer hitpoints_mod:integer protection_mod:integer resurrection_mod:integer --no-migration

rails generate scaffold DexterityMod value:integer attack_mod:integer surprise_mod:integer armor_class_mod:integer protection_mod:integer find_traps_mod:integer silent_movement_mod:integer lockpick_mod:integer stealth_mod:integer pickpocket_mod:integer --no-migration

rails generate scaffold Dice name:string --no-migration

rails generate scaffold EffectType name:string --no-migration

rails generate scaffold Effect name:string description:string effect_type:references user:references --no-migration

rails generate scaffold ElementType name:string --no-migration

rails generate scaffold Expertise name:string modifier:integer attr:string user:references --no-migration

rails generate scaffold IntelligenceMod value:integer languages_mod:integer learn_magic_mod:integer magic_circle_1_mod:integer magic_circle_2_mod:integer magic_circle_3_mod:integer magic_circle_4_mod:integer magic_circle_5_mod:integer magic_circle_6_mod:integer magic_circle_7_mod:integer magic_circle_8_mod:integer magic_circle_9_mod:integer --no-migration

rails generate scaffold ItemType name:string --no-migration

rails generate scaffold Item name:string description:string weight:decimal price:integer item_type:references user:references --no-migration

rails generate scaffold LanguageType name:string description:text --no-migration

rails generate scaffold MaterialType name:string --no-migration

rails generate scaffold Origin name:string variation:string bonus:integer --no-migration

rails generate scaffold PerkType name:string --no-migration

rails generate scaffold Perk name:string description:string perk_type:references user:references --no-migration

rails generate scaffold RoleAccess id_menu_item:integer role:references --no-migration

rails generate scaffold Role name:string admin:boolean --no-migration

rails generate scaffold SkillType name:string --no-migration

rails generate scaffold Skill name:string description:string effect:references skill_type:references user:references --no-migration

rails generate scaffold SpellCircle circle:integer spell_type:references --no-migration

rails generate scaffold SpellType name:string --no-migration

rails generate scaffold Spell name:string range:string duration:string description:string effect:references element_type:references spell_circle:references user:references --no-migration

rails generate scaffold StrengthMod value:integer attack_mod:integer damage_mod:integer --no-migration

rails generate scaffold ThiefTalent level:integer lockpick:integer find_traps:integer climb:integer silent_movement:integer stealth:integer pickpocket:integer hear_noises:string backstab:string --no-migration

rails generate scaffold UndeadBane level:integer skelleton_mod:string zombie_mod:string ghoul_mod:string inhuman_mod:string aparition_mod:string mummy_mod:string specter_mod:string vampire_mod:string --no-migration

rails generate scaffold User name:string login:string pass:string inc_date:datetime last_login:datetime email:string role:references --no-migration

rails generate scaffold WeaponType name:string --no-migration

rails generate scaffold Weapon name:string description:string initiative:integer ranged:boolean range:integer damage:string weight:decimal price:decimal alignment:references dice:references material_type:references origin:references user:references weapon_type:references --no-migration

rails generate scaffold WisdomMod value:integer protection_mod:integer magic_cicle_1_mod:integer magic_cicle_2_mod:integer magic_cicle_3_mod:integer --no-migration
