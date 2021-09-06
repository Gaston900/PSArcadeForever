// Proyecto Shadows Arcade Plus+
// copyright-holders:Gaston90

 /********************************************
        Proyecto Shadows Arcade Plus+
**********************************************/

 /****************
 Mortal Kombat 3
*******************/

ROM_START( mk3la01 )
	ROM_REGION16_LE( 0x800000, "dcs", ROMREGION_ERASEFF )
	//ROM_LOAD16_BYTE( "l1_mortal_kombat_3_u2_music_spch.u2", 0x000000, 0x100000, CRC(5273436f) SHA1(e1735842a0159eafe79d878d44e3828df9bfa5bb) )
	ROM_LOAD16_BYTE( "l2.0_mortal_kombat_3_u2_ultimate.u2", 0x000000, 0x100000, CRC(3838cfe5) SHA1(e3d2901f3bae1362742fc6ee0aa31c9f63b4dfa3) )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_3_u3_music_spch.u3", 0x200000, 0x100000, CRC(856fe411) SHA1(6165ebecfce7500e948d84492ffa19eed7f47091) )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_3_u4_music_spch.u4", 0x400000, 0x100000, CRC(428a406f) SHA1(e70ec83cd054de0da1e178720ed0035b8887f797) )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_3_u5_music_spch.u5", 0x600000, 0x100000, CRC(3b98a09f) SHA1(edf1d02a56dcf3349e6b4bb4097acfe7592305f4) )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "mk321u54_la01.bin",  0x00000, 0x80000, CRC(bf3febc8) SHA1(5fd936c73c41e27213073e696182d5adddb45005) )
	ROM_LOAD16_BYTE( "mk321u63_la01.bin",  0x00001, 0x80000, CRC(95d7a064) SHA1(5667313693c2030f9f295ef2f82380e0329d8957) )

	ROM_REGION( 0x2000000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u133_game_rom_la01.u133",  0x0000000, 0x100000, CRC(b6542432) SHA1(686761975535028cfc625f6943d4bff8cfb460a7) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u132_game_rom_la01.u132",  0x0000001, 0x100000, CRC(f7a771cd) SHA1(b427dc1d75c824582e1336d54a550663f7d8a724) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u131_game_rom_la01.u131",  0x0000002, 0x100000, CRC(c47ed51b) SHA1(5b10c326cac07b9fcea458b7e995a8f64135fe04) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u130_game_rom_la01.u130",  0x0000003, 0x100000, CRC(5b189c96) SHA1(dc494b23d4376fcddbf12ff5a57cfdc4b9c31b95) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u129_game_rom.u129",  0x0400000, 0x100000, CRC(a8b41803) SHA1(9697e35e8bb51d6d36b1d7ae47377b446e57682f) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u128_game_rom.u128",  0x0400001, 0x100000, CRC(b410d72f) SHA1(ac5c1c6f744186540f4ab100d9bd4ce6007e600b) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u127_game_rom.u127",  0x0400002, 0x100000, CRC(bd985be7) SHA1(f5183abea2e5eb2c2c8cefa72c9ed321679f5128) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u126_game_rom.u126",  0x0400003, 0x100000, CRC(e7c32cf4) SHA1(94ea7b2eed7dae66f5dd676c20d6b360140e3e0e) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u125_game_rom_la01.u125",  0x0800000, 0x100000, CRC(8dfb82bf) SHA1(f58a4030ff1e0aa5e7870f81dbc685ab6bd736fa) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u124_game_rom_la01.u124",  0x0800001, 0x100000, CRC(f41c6031) SHA1(13bdfe5fc2b027c2438a8474a185b5073902308d) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u123_game_rom_la01.u123",  0x0800002, 0x100000, CRC(3cae16e3) SHA1(10469fcad0de444f5249e1575cc68eff257af32f) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u122_game_rom_la01.u122",  0x0800003, 0x100000, CRC(cacb9b48) SHA1(8bc7452978d44a7b36952b4e1017ce0bd7af4186) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u121_game_rom.u121",  0x0c00000, 0x100000, CRC(b6c6296a) SHA1(7b92a92d65493bb201daf5ece6f00140f017ac51) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u120_game_rom.u120",  0x0c00001, 0x100000, CRC(8d1ccc3b) SHA1(35d91c00113718a08a9d56eb04366f8cf4069ba6) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u119_game_rom.u119",  0x0c00002, 0x100000, CRC(63215b59) SHA1(709bce15fba1520bcba40f0a5cb614542f1b460f) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u118_game_rom.u118",  0x0c00003, 0x100000, CRC(8b681e34) SHA1(524104ba2eb2deb3cfae9760e6b2125ce6b6633e) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u117_game_rom.u117",  0x1000000, 0x080000, CRC(1ab20377) SHA1(0c0d14464d8b23a60e0693669af2ddb82655eff8) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u116_game_rom.u116",  0x1000001, 0x080000, CRC(ba246ad0) SHA1(ec6bdd4b9cd3007bb66bb8de36d148abb30e7f11) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u115_game_rom.u115",  0x1000002, 0x080000, CRC(3ee8b124) SHA1(1523d51e36d3c336b134a562da36a29ba137c0f6) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_3_u114_game_rom.u114",  0x1000003, 0x080000, CRC(a8d99922) SHA1(04ff8d85448701070672f44dbf5bcfd744f1bc8a) )
ROM_END

 /*****************
 WWF: Wrestlemania
*********************/

ROM_START( wwfmaniala01 )
	ROM_REGION16_LE( 0x800000, "dcs", ROMREGION_ERASEFF )
	ROM_LOAD16_BYTE( "wwf_music-spch_l1.u2", 0x000000, 0x100000, CRC(a9acb250) SHA1(c1a7773ffdb86dc2c1c90c220482ed6330fcbb55) ) /* These 4 are labeled as L1 */
	ROM_LOAD16_BYTE( "wwf_music-spch_l1.u3", 0x200000, 0x100000, CRC(9442b6c9) SHA1(1f887c05ab9ca99078be584d7e9e6c59c8ec1818) )
	ROM_LOAD16_BYTE( "wwf_music-spch_l1.u4", 0x400000, 0x100000, CRC(cee78fac) SHA1(c37d3b4aef47dc80d864497b3013f03220d45482) )
	ROM_LOAD16_BYTE( "wwf_music-spch_l1.u5", 0x600000, 0x100000, CRC(5b31fd40) SHA1(35dcf19b223029e17616357d29dd04bbfeb83491) )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "wwf_game_rom_l1_la01.30.u54", 0x00000, 0x80000, CRC(ffd1abc6) SHA1(c95dc542d461a6a5175c8cd5de950d0530244a4d) ) /* Labeled as L1.30 */
	ROM_LOAD16_BYTE( "wwf_game_rom_l1_la01.30.u63", 0x00001, 0x80000, CRC(41260903) SHA1(7f5195d719333972289a4c94c0f837af9cfdb325) ) /* Labeled as L1.30 */

	ROM_REGION( 0x2000000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u133", 0x0000000, 0x100000, CRC(5e1b1e3d) SHA1(55f54e4b0dc775058699b1c0abdd7241ffca0e76) ) /* All graphics roms labeled as L1 */
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u132", 0x0000001, 0x100000, CRC(5943b3b2) SHA1(8ba0b20e7993769736c961d0fda97b2850d1446b) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u131", 0x0000002, 0x100000, CRC(0815db22) SHA1(ebd6a8c4f0e8d979af7f173b3f139d91e4857f6b) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u130", 0x0000003, 0x100000, CRC(9ee9a145) SHA1(caeb8506e1414e8c58e3031d4a2e0619ef3922b7) )

	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u129", 0x0400000, 0x100000, CRC(c644c2f4) SHA1(9094452eb37ec92932109ab2b209e12074111dd7) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u128", 0x0400001, 0x100000, CRC(fcda4e9a) SHA1(a05a12f606632034eae662cccfee5aaaffe0348b) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u127", 0x0400002, 0x100000, CRC(45be7428) SHA1(a5d3e37c64cac03139028fe998494b76e6b6a7ae) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u126", 0x0400003, 0x100000, CRC(eaa276a8) SHA1(d0c2f4d4409830355c6e112e3eafb4d3a1b8c22e) )

	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u125", 0x0800000, 0x100000, CRC(a19ebeed) SHA1(cf51bca29fd39c6189c2b431eb718a6341781d1f) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u124", 0x0800001, 0x100000, CRC(dc7d3dbb) SHA1(8982d9a1babce57ae7465bce3f4863dd336c20ac) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u123", 0x0800002, 0x100000, CRC(e0ade56f) SHA1(a15c672a45f39c0232d678e71380d4f58c4659ae) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u122", 0x0800003, 0x100000, CRC(2800c78d) SHA1(8012785f1c1eaf8d533a98e0a521a5d31efc7a42) )

	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u121", 0x0c00000, 0x100000, CRC(a28ffcba) SHA1(f66be0793b12a7f04e32d3db8311d1f33b0c3fbe) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u120", 0x0c00001, 0x100000, CRC(3a05d371) SHA1(4ed73e1c06ea7bd33e6c72a6a752960ba55d1975) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u119", 0x0c00002, 0x100000, CRC(97ffa659) SHA1(986f8ec57085b808d33c85ed55b35a5e1cadf3b6) )
	ROM_LOAD32_BYTE( "wwf_image_rom_l1.u118", 0x0c00003, 0x100000, CRC(46668e97) SHA1(282ca2e561f7553717d60b5a745f8e3fc1bda610) )
ROM_END

/*    YEAR  NAME            PARENT    MACHINE        INPUT       INIT             MONITOR COMPANY                 FULLNAME FLAGS */
// Mortal Kombat 3
GAME( 2020, mk3la01,        mk3,        wunit_picsim, mk3, midwunit_state, init_mk3,  ROT0, "hack",   "Mortal Kombat 3 (Revision 2.1 Kaillera Friendly 2020-12-03)", MACHINE_SUPPORTS_SAVE )
// WWF: Wrestlemania
GAME( 2020, wwfmaniala01,   wwfmania,   wunit_picsim, wwfmania, midwunit_state, init_wwfmania, ROT0, "hack", "WWF: Wrestlemania (Acid Clown Edition SP2 2020-12-03)", MACHINE_SUPPORTS_SAVE )
