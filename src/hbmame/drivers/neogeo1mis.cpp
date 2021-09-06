// Proyecto Shadows Arcade Plus+
// copyright-holders:Gaston90

 /********************************************
        Proyecto Shadows Arcade Plus+
**********************************************/

/***************
 Breakers Revenge
******************/

ROM_START( brkrevla01 ) //brkrevext
	ROM_REGION( 0x200000, "maincpu", 0 )
	ROM_LOAD16_WORD_SWAP( "245-la01.p1", 0x100000, 0x100000, CRC(603b47a4) SHA1(b6000af2bbccddb2ce9d17d2fe01900ac50a9bd5) )
	ROM_CONTINUE( 0x000000, 0x100000 )

	NEO_SFIX_128K( "245.s1", CRC(e7660a5d) SHA1(1cd54964ba60b245ea57d9daf0e27b572b815d21) )

	NEO_BIOS_AUDIO_128K( "245.m1", CRC(00f31c66) SHA1(8488598415c9b74bce00e05b31d96e3d1625c20d) )

	ROM_REGION( 0x800000, "ymsnd:adpcma", 0 )
	ROM_LOAD( "245.v1", 0x000000, 0x400000, CRC(e255446c) SHA1(b3933340d49d4ba581f3bf1af7ad69d786205790) )
	ROM_LOAD( "245.v2", 0x400000, 0x400000, CRC(9068198a) SHA1(71819b0475a5e173a2f9a6e4ff19a94655141c3c) )

	ROM_REGION( 0x1800000, "sprites", 0 )
	ROM_LOAD16_BYTE( "245.c1", 0x0000000, 0x400000, CRC(68d4ae76) SHA1(2e820067f6963669f104bebf19e865fe4127b4dd) )
	ROM_LOAD16_BYTE( "245.c2", 0x0000001, 0x400000, CRC(fdee05cd) SHA1(efc4ffd790953ac7c25d5f045c64a9b49d24b096) )
	ROM_LOAD16_BYTE( "245.c3", 0x0800000, 0x400000, CRC(645077f3) SHA1(0ae74f3b4b3b88f128c6d8c0f35ffa53f5d67ef2) )
	ROM_LOAD16_BYTE( "245.c4", 0x0800001, 0x400000, CRC(63aeb74c) SHA1(9ff6930c0c3d79b46b86356e8565ce4fcd69ac38) )
	ROM_LOAD16_BYTE( "245.c5", 0x1000000, 0x400000, CRC(b5f40e7f) SHA1(b332bac64dbb9a9dd66c5315f47ea08634d36f45) )
	ROM_LOAD16_BYTE( "245.c6", 0x1000001, 0x400000, CRC(d0337328) SHA1(dff86b75dc283bd4512557a5c64f16e6be6c16e4) )
ROM_END

/*    YEAR  NAME            PARENT    MACHINE        INPUT       INIT             MONITOR COMPANY                 FULLNAME FLAGS */
//Breakers Revenge
GAME( 2018, brkrevla01,     breakrev, neogeo_noslot, neogeo, neogeo_state, init_neogeo,    ROT0, "hack", "Breakers Revenge (Extra Mode 2018)", MACHINE_SUPPORTS_SAVE )
