INIT_O_FILES := 						            \
	$(BUILD_DIR)/asm/init.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES :=                                     \
    $(BUILD_DIR)/asm/main.o                         \
    $(BUILD_DIR)/asm/system.o                       \
    $(BUILD_DIR)/asm/seq_game.o                     \
    $(BUILD_DIR)/asm/seq_mapchange.o                \
    $(BUILD_DIR)/asm/seq_title.o                    \
    $(BUILD_DIR)/asm/bgdrv.o                        \
    $(BUILD_DIR)/asm/cam_road.o                     \
    $(BUILD_DIR)/asm/camdrv.o                       \
    $(BUILD_DIR)/asm/dispdrv.o                      \
    $(BUILD_DIR)/asm/fadedrv.o                      \
    $(BUILD_DIR)/asm/hitdrv.o                       \
    $(BUILD_DIR)/asm/icondrv.o                      \
    $(BUILD_DIR)/asm/lightdrv.o                     \
    $(BUILD_DIR)/asm/mapdrv.o                       \
    $(BUILD_DIR)/asm/shadowdrv.o                    \
    $(BUILD_DIR)/asm/seqdrv.o                       \
    $(BUILD_DIR)/asm/DEMOInit.o                     \
    $(BUILD_DIR)/asm/DEMOPad.o                      \
    $(BUILD_DIR)/asm/memory.o                       \
    $(BUILD_DIR)/asm/evtmgr_cmd.o                   \
    $(BUILD_DIR)/asm/evtmgr.o                       \
    $(BUILD_DIR)/asm/texPalette.o                   \
    $(BUILD_DIR)/asm/evt_map.o                      \
    $(BUILD_DIR)/asm/mapdata.o                      \
    $(BUILD_DIR)/asm/animdrv.o                      \
    $(BUILD_DIR)/asm/npcdrv.o                       \
    $(BUILD_DIR)/asm/evt_npc.o                      \
    $(BUILD_DIR)/asm/evt_sub.o                      \
    $(BUILD_DIR)/asm/mario.o                        \
    $(BUILD_DIR)/asm/effdrv.o                       \
    $(BUILD_DIR)/asm/mobjdrv.o                      \
    $(BUILD_DIR)/asm/evt_mobj.o                     \
    $(BUILD_DIR)/asm/evt_eff.o                      \
    $(BUILD_DIR)/asm/evt_paper.o                    \
    $(BUILD_DIR)/asm/casedrv.o                      \
    $(BUILD_DIR)/asm/mariost.o                      \
    $(BUILD_DIR)/asm/evt_case.o                     \
    $(BUILD_DIR)/asm/evt_img.o                      \
    $(BUILD_DIR)/asm/imgdrv.o                       \
    $(BUILD_DIR)/asm/offscreendrv.o                 \
    $(BUILD_DIR)/asm/evt_offscreen.o                \
    $(BUILD_DIR)/asm/seq_battle.o                   \
    $(BUILD_DIR)/asm/evt_hit.o                      \
    $(BUILD_DIR)/asm/fontmgr.o                      \
    $(BUILD_DIR)/asm/arc.o                          \
    $(BUILD_DIR)/asm/arcdiv.o                       \
    $(BUILD_DIR)/asm/seq_gameover.o                 \
    $(BUILD_DIR)/asm/evt_bero.o                     \
    $(BUILD_DIR)/asm/windowdrv.o                    \
    $(BUILD_DIR)/asm/msgdrv.o                       \
    $(BUILD_DIR)/asm/parse.o                        \
    $(BUILD_DIR)/asm/database.o                     \
    $(BUILD_DIR)/asm/swdrv.o                        \
    $(BUILD_DIR)/asm/seq_logo.o                     \
    $(BUILD_DIR)/asm/mot_walk.o                     \
    $(BUILD_DIR)/asm/mario_hit.o                    \
    $(BUILD_DIR)/asm/mario_motion.o                 \
    $(BUILD_DIR)/asm/mario_sbr.o                    \
    $(BUILD_DIR)/asm/mot_hammer.o                   \
    $(BUILD_DIR)/asm/mot_jabara.o                   \
    $(BUILD_DIR)/asm/mot_jump.o                     \
    $(BUILD_DIR)/asm/mot_plane.o                    \
    $(BUILD_DIR)/asm/mot_roll.o                     \
    $(BUILD_DIR)/asm/mot_ship.o                     \
    $(BUILD_DIR)/asm/mot_slit.o                     \
    $(BUILD_DIR)/asm/mot_stay.o                     \
    $(BUILD_DIR)/asm/evt_cam.o                      \
    $(BUILD_DIR)/asm/evt_item.o                     \
    $(BUILD_DIR)/asm/itemdrv.o                      \
    $(BUILD_DIR)/asm/cardmgr.o                      \
    $(BUILD_DIR)/asm/party_yoshi.o                  \
    $(BUILD_DIR)/asm/party.o                        \
    $(BUILD_DIR)/asm/party_bomhei.o                 \
    $(BUILD_DIR)/asm/party_hit.o                    \
    $(BUILD_DIR)/asm/party_kuribo.o                 \
    $(BUILD_DIR)/asm/party_move.o                   \
    $(BUILD_DIR)/asm/party_nokonoko.o               \
    $(BUILD_DIR)/asm/evt_msg.o                      \
    $(BUILD_DIR)/asm/mario_pouch.o                  \
    $(BUILD_DIR)/asm/extdrv.o                       \
    $(BUILD_DIR)/asm/evt_ext.o                      \
    $(BUILD_DIR)/asm/pmario_sound.o                 \
    $(BUILD_DIR)/asm/sound.o                        \
    $(BUILD_DIR)/asm/evt_mario.o                    \
    $(BUILD_DIR)/asm/evt_door.o                     \
    $(BUILD_DIR)/asm/evt_party.o                    \
    $(BUILD_DIR)/asm/event.o                        \
    $(BUILD_DIR)/asm/evt_shop.o                     \
    $(BUILD_DIR)/asm/evt_pouch.o                    \
    $(BUILD_DIR)/asm/evt_kinopio.o                  \
    $(BUILD_DIR)/asm/npc_event.o                    \
    $(BUILD_DIR)/asm/cam_shift.o                    \
    $(BUILD_DIR)/asm/seq_load.o                     \
    $(BUILD_DIR)/asm/evt_bg.o                       \
    $(BUILD_DIR)/asm/battle.o                       \
    $(BUILD_DIR)/asm/battle_ac.o                    \
    $(BUILD_DIR)/asm/battle_damage.o                \
    $(BUILD_DIR)/asm/battle_detect.o                \
    $(BUILD_DIR)/asm/battle_disp.o                  \
    $(BUILD_DIR)/asm/battle_event_cmd.o             \
    $(BUILD_DIR)/asm/battle_event_default.o         \
    $(BUILD_DIR)/asm/battle_event_subset.o          \
    $(BUILD_DIR)/asm/battle_information.o           \
    $(BUILD_DIR)/asm/battle_mario.o                 \
    $(BUILD_DIR)/asm/battle_menu_disp.o             \
    $(BUILD_DIR)/asm/battle_pad.o                   \
    $(BUILD_DIR)/asm/battle_seq.o                   \
    $(BUILD_DIR)/asm/battle_seq_command.o           \
    $(BUILD_DIR)/asm/battle_sub.o                   \
    $(BUILD_DIR)/asm/battle_unit.o                  \
    $(BUILD_DIR)/asm/battle_unit_event.o            \
    $(BUILD_DIR)/asm/ac_stick_keep_left.o           \
    $(BUILD_DIR)/asm/ac_timing_a.o                  \
    $(BUILD_DIR)/asm/evt_damage.o                   \
    $(BUILD_DIR)/asm/battle_camera.o                \
    $(BUILD_DIR)/asm/battle_item_data.o             \
    $(BUILD_DIR)/asm/battle_monosiri.o              \
    $(BUILD_DIR)/asm/mario_balloon.o                \
    $(BUILD_DIR)/asm/evt_nannpc.o                   \
    $(BUILD_DIR)/asm/eff_fukidashi.o                \
    $(BUILD_DIR)/asm/eff_kemuri.o                   \
    $(BUILD_DIR)/asm/eff_butterfly.o                \
    $(BUILD_DIR)/asm/eff_confetti.o                 \
    $(BUILD_DIR)/asm/mario_kemuri.o                 \
    $(BUILD_DIR)/asm/evt_fade.o                     \
    $(BUILD_DIR)/asm/evt_light.o                    \
    $(BUILD_DIR)/asm/ac_repeatedly.o                \
    $(BUILD_DIR)/asm/battle_stage.o                 \
    $(BUILD_DIR)/asm/evt_audience.o                 \
    $(BUILD_DIR)/asm/mot_damage.o                   \
    $(BUILD_DIR)/asm/mot_yoshi.o                    \
    $(BUILD_DIR)/asm/evt_batstage.o                 \
    $(BUILD_DIR)/asm/statuswindow.o                 \
    $(BUILD_DIR)/asm/evt_seq.o                      \
    $(BUILD_DIR)/asm/eff_damage_star.o              \
    $(BUILD_DIR)/asm/eff_hit.o                      \
    $(BUILD_DIR)/asm/eff_mario_balloon.o            \
    $(BUILD_DIR)/asm/eff_small_star.o               \
    $(BUILD_DIR)/asm/eff_mugi.o                     \
    $(BUILD_DIR)/asm/mario_party.o                  \
    $(BUILD_DIR)/asm/eff_stardust.o                 \
    $(BUILD_DIR)/asm/eff_recovery.o                 \
    $(BUILD_DIR)/asm/eff_miss_star.o                \
    $(BUILD_DIR)/asm/eff_nice.o                     \
    $(BUILD_DIR)/asm/dvdmgr.o                       \
    $(BUILD_DIR)/asm/unit_mario.o                   \
    $(BUILD_DIR)/asm/evt_twoddisp.o                 \
    $(BUILD_DIR)/asm/eff_breath_fire.o              \
    $(BUILD_DIR)/asm/battle_attack_audience.o       \
    $(BUILD_DIR)/asm/battle_stage_object.o          \
    $(BUILD_DIR)/asm/mot_dokan.o                    \
    $(BUILD_DIR)/asm/party_motion.o                 \
    $(BUILD_DIR)/asm/evt_snd.o                      \
    $(BUILD_DIR)/asm/arammgr.o                      \
    $(BUILD_DIR)/asm/win_root.o                     \
    $(BUILD_DIR)/asm/win_party.o                    \
    $(BUILD_DIR)/asm/win_badge.o                    \
    $(BUILD_DIR)/asm/win_item.o                     \
    $(BUILD_DIR)/asm/win_mario.o                    \
    $(BUILD_DIR)/asm/win_log.o                      \
    $(BUILD_DIR)/asm/evt_win.o                      \
    $(BUILD_DIR)/asm/win_main.o                     \
    $(BUILD_DIR)/asm/evt_cloud.o                    \
    $(BUILD_DIR)/asm/unit_party_clauda.o            \
    $(BUILD_DIR)/asm/unit_party_yoshi.o             \
    $(BUILD_DIR)/asm/unit_party_chuchurina.o        \
    $(BUILD_DIR)/asm/unit_party_sanders.o           \
    $(BUILD_DIR)/asm/unit_party_vivian.o            \
    $(BUILD_DIR)/asm/himo.o                         \
    $(BUILD_DIR)/asm/party_vivian.o                 \
    $(BUILD_DIR)/asm/party_cloud.o                  \
    $(BUILD_DIR)/asm/party_chuchu.o                 \
    $(BUILD_DIR)/asm/unit_party_nokotarou.o         \
    $(BUILD_DIR)/asm/unit_party_christine.o         \
    $(BUILD_DIR)/asm/battle_weapon_power.o          \
    $(BUILD_DIR)/asm/filemgr.o                      \
    $(BUILD_DIR)/asm/mot_hip.o                      \
    $(BUILD_DIR)/asm/eff_fire.o                     \
    $(BUILD_DIR)/asm/battle_actrecord.o             \
    $(BUILD_DIR)/asm/battle_audience_kinopio.o      \
    $(BUILD_DIR)/asm/battle_acrobat.o               \
    $(BUILD_DIR)/asm/eff_spark.o                    \
    $(BUILD_DIR)/asm/eff_updown.o                   \
    $(BUILD_DIR)/asm/eff_charge.o                   \
    $(BUILD_DIR)/asm/eff_toge_flush.o               \
    $(BUILD_DIR)/asm/battle_status_effect.o         \
    $(BUILD_DIR)/asm/eff_ice.o                      \
    $(BUILD_DIR)/asm/eff_torch.o                    \
    $(BUILD_DIR)/asm/eff_bomb.o                     \
    $(BUILD_DIR)/asm/ac_shot.o                      \
    $(BUILD_DIR)/asm/eff_ripple.o                   \
    $(BUILD_DIR)/asm/evt_env.o                      \
    $(BUILD_DIR)/asm/envdrv.o                       \
    $(BUILD_DIR)/asm/ac_lst_rc_keep.o               \
    $(BUILD_DIR)/asm/battle_audience.o              \
    $(BUILD_DIR)/asm/mario_cam.o                    \
    $(BUILD_DIR)/asm/unit_object_tree.o             \
    $(BUILD_DIR)/asm/unit_object_switch.o           \
    $(BUILD_DIR)/asm/battle_icon.o                  \
    $(BUILD_DIR)/asm/evt_telop.o                    \
    $(BUILD_DIR)/asm/ac_repeatedly_lv.o             \
    $(BUILD_DIR)/asm/battle_message.o               \
    $(BUILD_DIR)/asm/eff_whirlwind_n64.o            \
    $(BUILD_DIR)/asm/eff_akari_charge_n64.o         \
    $(BUILD_DIR)/asm/eff_akari_pose_n64.o           \
    $(BUILD_DIR)/asm/eff_akari_sflush_n64.o         \
    $(BUILD_DIR)/asm/eff_balloon_heiho_n64.o        \
    $(BUILD_DIR)/asm/eff_balloon_n64.o              \
    $(BUILD_DIR)/asm/eff_blow_n64.o                 \
    $(BUILD_DIR)/asm/eff_bomb_n64.o                 \
    $(BUILD_DIR)/asm/eff_bomhei_n64.o               \
    $(BUILD_DIR)/asm/eff_booboo_n64.o               \
    $(BUILD_DIR)/asm/eff_breath_fire_n64.o          \
    $(BUILD_DIR)/asm/eff_broken_barrier_n64.o       \
    $(BUILD_DIR)/asm/eff_bush_n64.o                 \
    $(BUILD_DIR)/asm/eff_butterfly_n64.o            \
    $(BUILD_DIR)/asm/eff_cloud_n64.o                \
    $(BUILD_DIR)/asm/eff_coin_n64.o                 \
    $(BUILD_DIR)/asm/eff_confetti_n64.o             \
    $(BUILD_DIR)/asm/eff_cool_leaf_n64.o            \
    $(BUILD_DIR)/asm/eff_crystal_n64.o              \
    $(BUILD_DIR)/asm/eff_dogabon_attack_n64.o       \
    $(BUILD_DIR)/asm/eff_expbom_n64.o               \
    $(BUILD_DIR)/asm/eff_explosion_n64.o            \
    $(BUILD_DIR)/asm/eff_fall_leaf_n64.o            \
    $(BUILD_DIR)/asm/eff_fire_dust_n64.o            \
    $(BUILD_DIR)/asm/eff_fire_ring_n64.o            \
    $(BUILD_DIR)/asm/eff_fire_spark_n64.o           \
    $(BUILD_DIR)/asm/eff_fireflower_n64.o           \
    $(BUILD_DIR)/asm/eff_fireworks_n64.o            \
    $(BUILD_DIR)/asm/eff_flame_n64.o                \
    $(BUILD_DIR)/asm/eff_flower_n64.o               \
    $(BUILD_DIR)/asm/eff_freeze_n64.o               \
    $(BUILD_DIR)/asm/eff_gareki_n64.o               \
    $(BUILD_DIR)/asm/eff_glass_n64.o                \
    $(BUILD_DIR)/asm/eff_guruguru_n64.o             \
    $(BUILD_DIR)/asm/eff_hatetaka_flush_n64.o       \
    $(BUILD_DIR)/asm/eff_hit_n64.o                  \
    $(BUILD_DIR)/asm/eff_hokori_n64.o               \
    $(BUILD_DIR)/asm/eff_holography_n64.o           \
    $(BUILD_DIR)/asm/eff_horao_spell_n64.o          \
    $(BUILD_DIR)/asm/eff_ice_n64.o                  \
    $(BUILD_DIR)/asm/eff_kameki_tornade_n64.o       \
    $(BUILD_DIR)/asm/eff_kemuri1_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri2_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri3_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri4_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri5_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri6_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri7_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri8_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri9_n64.o              \
    $(BUILD_DIR)/asm/eff_kemuri10_n64.o             \
    $(BUILD_DIR)/asm/eff_kemuri11_n64.o             \
    $(BUILD_DIR)/asm/eff_kemuri12_n64.o             \
    $(BUILD_DIR)/asm/eff_kumokumo_chip_n64.o        \
    $(BUILD_DIR)/asm/eff_kumokumo_n64.o             \
    $(BUILD_DIR)/asm/eff_lensflare_n64.o            \
    $(BUILD_DIR)/asm/eff_magic1_n64.o               \
    $(BUILD_DIR)/asm/eff_magic2_n64.o               \
    $(BUILD_DIR)/asm/eff_magic3_n64.o               \
    $(BUILD_DIR)/asm/eff_magic_horao_n64.o          \
    $(BUILD_DIR)/asm/eff_n64.o                      \
    $(BUILD_DIR)/asm/eff_onpu_n64.o                 \
    $(BUILD_DIR)/asm/eff_opuku_jetw_n64.o           \
    $(BUILD_DIR)/asm/eff_opuku_jetwrain_n64.o       \
    $(BUILD_DIR)/asm/eff_opuku_wcurtain_n64.o       \
    $(BUILD_DIR)/asm/eff_opuku_wgun_n64.o           \
    $(BUILD_DIR)/asm/eff_opuku_wprotect_n64.o       \
    $(BUILD_DIR)/asm/eff_packn_bfire_n64.o          \
    $(BUILD_DIR)/asm/eff_peach_dust_n64.o           \
    $(BUILD_DIR)/asm/text.o                         \
    $(BUILD_DIR)/asm/dolphin_lib.o

CTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=                                   \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(BUILD_DIR)/asm/data.o

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=                                     \
    $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sbss2.o
