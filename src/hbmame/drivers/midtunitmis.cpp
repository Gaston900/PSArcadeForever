// Proyecto Shadows Arcade Plus+
// copyright-holders:Gaston90

 /********************************************
        Proyecto Shadows Arcade Plus+
**********************************************/

/***************
 Mortal Kombat I
******************/

ROM_START( mkla01 ) //mkk
	ROM_REGION( 0x50000, "adpcm:cpu", 0 )
	ROM_LOAD( "sl1_mortal_kombat_u3_sound_rom.u3", 0x10000, 0x40000, CRC(c615844c) SHA1(5732f9053a5f73b0cc3b0166d7dc4430829d5bc7) )

	ROM_REGION( 0x100000, "adpcm:oki", 0 )
	ROM_LOAD( "sl1_mortal_kombat_u12_sound_rom.u12", 0x00000, 0x40000, CRC(258bd7f9) SHA1(463890b23f17350fb9b8a85897b0777c45bc2d54) )
	ROM_RELOAD(              0x40000, 0x40000 )
	ROM_LOAD( "sl1_mortal_kombat_u13_sound_rom.u13", 0x80000, 0x40000, CRC(7b7ec3b6) SHA1(6eec1b90d4a4855f34a7ebfbf93f3358d5627db4) )
	ROM_RELOAD(              0xc0000, 0x40000 )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "mkt-uj12_la01.bin", 0x00000, 0x80000, CRC(21c3b8f6) SHA1(e2338a39263d7abe1cdadc082d20be8c53fc270d) )
	ROM_LOAD16_BYTE( "mkt-ug12_la01.bin", 0x00001, 0x80000, CRC(2f7d7079) SHA1(b2c8ccd829341ab0f4613627286ae405a7188460) )

	ROM_REGION( 0xc00000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug14_game_rom.ug14", 0x000000, 0x80000, CRC(9e00834e) SHA1(2b97b63f52ba1dba6af6ae56c223519a52b2ab9d) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj14_game_rom.uj14", 0x000001, 0x80000, CRC(f4b0aaa7) SHA1(4cc6ee34c89e3cde325ad24b29511f70ae6a5a72) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug19_game_rom.ug19", 0x000002, 0x80000, CRC(2d8c7ba1) SHA1(f891d6eb618dbf3e77f02e0f93da216e20571905) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj19_game_rom.uj19", 0x000003, 0x80000, CRC(33b9b7a4) SHA1(e8ceca4c049e1f55d480a03ff793b595bd04d344) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug16_game_rom.ug16", 0x200000, 0x80000, CRC(52c9d1e5) SHA1(7b1880fca0a11544782b70365c7dd96381ac48e7) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj16_game_rom.uj16", 0x200001, 0x80000, CRC(c94c58cf) SHA1(974d75667eee779497325d5be8df937f15417edf) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug20_game_rom.ug20", 0x200002, 0x80000, CRC(2f7e55d3) SHA1(bda6892ee6fcb46959e4d0892bbe7d9fc6072dd3) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj20_game_rom.uj20", 0x200003, 0x80000, CRC(eae96df0) SHA1(b40532312ba61e4065abfd733dd0c93eecad48e9) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug17_game_rom.ug17", 0x400000, 0x80000, CRC(e34fe253) SHA1(6b010bee795c1770297c9557ded1fe83425857f2) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj17_game_rom.uj17", 0x400001, 0x80000, CRC(a56e12f5) SHA1(5db637c4710990cd06bb0069714b19621532e431) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_ug22_game_rom.ug22", 0x400002, 0x80000, CRC(b537bb4e) SHA1(05a447deee2e89b49bdb3ca2161a021d7ec5f11e) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_t-unit_uj22_game_rom.uj22", 0x400003, 0x80000, CRC(5e12523b) SHA1(468f93ef9bb6addb45c1c939d24b6511f255426a) )
ROM_END

/***************
 Mortal Kombat II
******************/

ROM_START( mk2la01 ) //mk2k
	ROM_REGION16_LE( 0xc00000, "dcs", ROMREGION_ERASEFF )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u2.u2", 0x000000, 0x80000, CRC(5f23d71d) SHA1(54c2afef243759e0f3dbe2907edbc4302f5c8bad) )
	ROM_RELOAD(                0x100000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u3.u3", 0x200000, 0x80000, CRC(d6d92bf9) SHA1(397351c6b707f2595e36360471015f9fa494e894) )
	ROM_RELOAD(                0x300000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u4.u4", 0x400000, 0x80000, CRC(eebc8e0f) SHA1(705ab63ff7672a4857d546afda6dca4973cce1ad) )
	ROM_RELOAD(                0x500000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u5.u5", 0x600000, 0x80000, CRC(2b0b7961) SHA1(1cdc64aab74d14afbd8c3531e3d0bd49271a281f) )
	ROM_RELOAD(                0x700000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u6.u6", 0x800000, 0x80000, CRC(f694b27f) SHA1(d43e38a124665f49ebb4ffc5a55e8f19a1a64686) )
	ROM_RELOAD(                0x900000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u7.u7", 0xa00000, 0x80000, CRC(20387e0a) SHA1(505d05173b2a1f1ee3ebc2898ccd3a95c98dd04a) )
	ROM_RELOAD(                0xb00000, 0x80000 )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "uj12_la01.l31", 0x00000, 0x80000, CRC(405c6fe7) SHA1(cef91088226aff2722927c8a1fd1a7de53abfef4) )
	ROM_LOAD16_BYTE( "ug12_la01.l31", 0x00001, 0x80000, CRC(36ba2f17) SHA1(81a4ac08c641c8012ae0637849871001e09fd871) )

	ROM_REGION( 0xc00000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug14.ug14", 0x000000, 0x100000, CRC(01e73af6) SHA1(6598cfd704cc92a7f358a0e1f1c973ab79dcc493) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj14.uj14", 0x000001, 0x100000, CRC(d4985cbb) SHA1(367865da7efae38d83de3c0868d02a705177ae63) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug19.ug19", 0x000002, 0x100000, CRC(fec137be) SHA1(f11ecb8a7993f5c4f4449564b4911f69bd6e9bf8) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj19.uj19", 0x000003, 0x100000, CRC(2d763156) SHA1(06536006da49ab5fb6b75b25f801b83fad000ff5) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug16.ug16", 0x400000, 0x100000, CRC(8ba6ae18) SHA1(465fe907de4a1e502180c4e41642998dd3abc8e6) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj16.uj16", 0x400001, 0x100000, CRC(39d885b4) SHA1(2251826d247c3c6df421124718401fb35a672f83) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug20.ug20", 0x400002, 0x100000, CRC(809118c1) SHA1(86153e648834c749e34573151cd4fee403a81962) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj20.uj20", 0x400003, 0x100000, CRC(b96824f0) SHA1(d42b122f9a57da330192abc7e5f97abc4065d718) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug17.ug17", 0x800000, 0x100000, CRC(937d8620) SHA1(8b9f80a460b124a747a6d1495b53f01f580e28f1) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj17.uj17", 0x800001, 0x100000, CRC(218de160) SHA1(87aea173720d2a33d8183903f4fe8ba1d47e3348) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug22.ug22", 0x800002, 0x100000, CRC(154d53b1) SHA1(58ff0aa59101f40a9a3b5fbae1c904d0b0b31612) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj22.uj22", 0x800003, 0x100000, CRC(8891d785) SHA1(fd460df1ef8f4306ea42f7dc41488a80fd2c8f53) )
ROM_END

ROM_START( mk2la02 ) //mk2tek
	ROM_REGION16_LE( 0xc00000, "dcs", ROMREGION_ERASEFF )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u2.u2", 0x000000, 0x80000, CRC(5f23d71d) SHA1(54c2afef243759e0f3dbe2907edbc4302f5c8bad) )
	ROM_RELOAD(                0x100000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u3.u3", 0x200000, 0x80000, CRC(d6d92bf9) SHA1(397351c6b707f2595e36360471015f9fa494e894) )
	ROM_RELOAD(                0x300000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u4.u4", 0x400000, 0x80000, CRC(eebc8e0f) SHA1(705ab63ff7672a4857d546afda6dca4973cce1ad) )
	ROM_RELOAD(                0x500000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u5.u5", 0x600000, 0x80000, CRC(2b0b7961) SHA1(1cdc64aab74d14afbd8c3531e3d0bd49271a281f) )
	ROM_RELOAD(                0x700000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u6.u6", 0x800000, 0x80000, CRC(f694b27f) SHA1(d43e38a124665f49ebb4ffc5a55e8f19a1a64686) )
	ROM_RELOAD(                0x900000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u7.u7", 0xa00000, 0x80000, CRC(20387e0a) SHA1(505d05173b2a1f1ee3ebc2898ccd3a95c98dd04a) )
	ROM_RELOAD(                0xb00000, 0x80000 )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "uj12_la02.l31", 0x00000, 0x80000, CRC(92e2240f) SHA1(3c188e094608a225d8eefe28f114d2b56526b2e2) )
	ROM_LOAD16_BYTE( "ug12_la02.l31", 0x00001, 0x80000, CRC(9736b899) SHA1(39942b491d736baecae9eb67f91487d0d02ac28e) )

	ROM_REGION( 0xc00000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug14.ug14", 0x000000, 0x100000, CRC(01e73af6) SHA1(6598cfd704cc92a7f358a0e1f1c973ab79dcc493) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj14.uj14", 0x000001, 0x100000, CRC(d4985cbb) SHA1(367865da7efae38d83de3c0868d02a705177ae63) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug19.ug19", 0x000002, 0x100000, CRC(fec137be) SHA1(f11ecb8a7993f5c4f4449564b4911f69bd6e9bf8) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj19.uj19", 0x000003, 0x100000, CRC(2d763156) SHA1(06536006da49ab5fb6b75b25f801b83fad000ff5) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug16.ug16", 0x400000, 0x100000, CRC(8ba6ae18) SHA1(465fe907de4a1e502180c4e41642998dd3abc8e6) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj16.uj16", 0x400001, 0x100000, CRC(39d885b4) SHA1(2251826d247c3c6df421124718401fb35a672f83) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug20.ug20", 0x400002, 0x100000, CRC(809118c1) SHA1(86153e648834c749e34573151cd4fee403a81962) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj20.uj20", 0x400003, 0x100000, CRC(b96824f0) SHA1(d42b122f9a57da330192abc7e5f97abc4065d718) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug17.ug17", 0x800000, 0x100000, CRC(937d8620) SHA1(8b9f80a460b124a747a6d1495b53f01f580e28f1) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj17.uj17", 0x800001, 0x100000, CRC(218de160) SHA1(87aea173720d2a33d8183903f4fe8ba1d47e3348) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug22.ug22", 0x800002, 0x100000, CRC(154d53b1) SHA1(58ff0aa59101f40a9a3b5fbae1c904d0b0b31612) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj22.uj22", 0x800003, 0x100000, CRC(8891d785) SHA1(fd460df1ef8f4306ea42f7dc41488a80fd2c8f53) )
ROM_END

ROM_START( mk2la03 ) //mk2k
	ROM_REGION16_LE( 0xc00000, "dcs", ROMREGION_ERASEFF )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u2.u2", 0x000000, 0x80000, CRC(5f23d71d) SHA1(54c2afef243759e0f3dbe2907edbc4302f5c8bad) )
	ROM_RELOAD(                0x100000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u3.u3", 0x200000, 0x80000, CRC(d6d92bf9) SHA1(397351c6b707f2595e36360471015f9fa494e894) )
	ROM_RELOAD(                0x300000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u4.u4", 0x400000, 0x80000, CRC(eebc8e0f) SHA1(705ab63ff7672a4857d546afda6dca4973cce1ad) )
	ROM_RELOAD(                0x500000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u5.u5", 0x600000, 0x80000, CRC(2b0b7961) SHA1(1cdc64aab74d14afbd8c3531e3d0bd49271a281f) )
	ROM_RELOAD(                0x700000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u6.u6", 0x800000, 0x80000, CRC(f694b27f) SHA1(d43e38a124665f49ebb4ffc5a55e8f19a1a64686) )
	ROM_RELOAD(                0x900000, 0x80000 )
	ROM_LOAD16_BYTE( "l1_mortal_kombat_ii_sound_rom_u7.u7", 0xa00000, 0x80000, CRC(20387e0a) SHA1(505d05173b2a1f1ee3ebc2898ccd3a95c98dd04a) )
	ROM_RELOAD(                0xb00000, 0x80000 )

	ROM_REGION16_LE( 0x100000, "maincpu", 0 )
	ROM_LOAD16_BYTE( "uj12_la03.l31", 0x00000, 0x80000, CRC(a755a400) SHA1(0c5ca8885369897f08a81f0b9e49f05919e3efcf) )
	ROM_LOAD16_BYTE( "ug12_la03.l31", 0x00001, 0x80000, CRC(d1fef398) SHA1(10aa6bf25f89327207697b968d9f57d2c6127328) )

	ROM_REGION( 0xc00000, "gfxrom", 0 )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug14.ug14", 0x000000, 0x100000, CRC(01e73af6) SHA1(6598cfd704cc92a7f358a0e1f1c973ab79dcc493) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj14.uj14", 0x000001, 0x100000, CRC(d4985cbb) SHA1(367865da7efae38d83de3c0868d02a705177ae63) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug19.ug19", 0x000002, 0x100000, CRC(fec137be) SHA1(f11ecb8a7993f5c4f4449564b4911f69bd6e9bf8) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj19.uj19", 0x000003, 0x100000, CRC(2d763156) SHA1(06536006da49ab5fb6b75b25f801b83fad000ff5) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug16.ug16", 0x400000, 0x100000, CRC(8ba6ae18) SHA1(465fe907de4a1e502180c4e41642998dd3abc8e6) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj16.uj16", 0x400001, 0x100000, CRC(39d885b4) SHA1(2251826d247c3c6df421124718401fb35a672f83) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug20.ug20", 0x400002, 0x100000, CRC(809118c1) SHA1(86153e648834c749e34573151cd4fee403a81962) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj20.uj20", 0x400003, 0x100000, CRC(b96824f0) SHA1(d42b122f9a57da330192abc7e5f97abc4065d718) )

	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug17.ug17", 0x800000, 0x100000, CRC(937d8620) SHA1(8b9f80a460b124a747a6d1495b53f01f580e28f1) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj17.uj17", 0x800001, 0x100000, CRC(218de160) SHA1(87aea173720d2a33d8183903f4fe8ba1d47e3348) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_ug22.ug22", 0x800002, 0x100000, CRC(154d53b1) SHA1(58ff0aa59101f40a9a3b5fbae1c904d0b0b31612) )
	ROM_LOAD32_BYTE( "l1_mortal_kombat_ii_game_rom_uj22.uj22", 0x800003, 0x100000, CRC(8891d785) SHA1(fd460df1ef8f4306ea42f7dc41488a80fd2c8f53) )
ROM_END

/*    YEAR  NAME            PARENT    MACHINE        INPUT       INIT             MONITOR COMPANY                 FULLNAME FLAGS */
//Mortal Kombat I
GAME( 2020, mkla01,      mk,  tunit_adpcm, mk,  midtunit_state, init_mktunit, ROT0, "hack", "Mortal Kombat (Kaillera Friendly SP3 2020-12-02)", MACHINE_SUPPORTS_SAVE )
//Mortal Kombat II
GAME( 2020, mk2la01,     mk2, tunit_dcs,   mk2, midtunit_state, init_mk2,     ROT0, "hack", "Mortal Kombat II (Friendly Kaillera SP3 2020-12-02)", MACHINE_SUPPORTS_SAVE )
GAME( 2020, mk2la02,     mk2, tunit_dcs,   mk2, midtunit_state, init_mk2,     ROT0, "hack", "Ultimate Mortal Kombat II (Tournament Edition 2020-12-02)", MACHINE_SUPPORTS_SAVE )
GAME( 2021, mk2la03,     mk2, tunit_dcs,   mk2, midtunit_state, init_mk2,     ROT0, "hack", "Mortal Kombat II (Friendly Kaillera SP3 2021-08-05)", MACHINE_SUPPORTS_SAVE )
