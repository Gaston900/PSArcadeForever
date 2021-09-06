// Proyecto Shadows Arcade Plus+
// copyright-holders:Gaston90

 /********************************************
        Proyecto Shadows Arcade Plus+
**********************************************/

 /***************************
  The King of Fighters 2000
******************************/

ROM_START( kof2000la01 ) //kof2000sp
	ROM_REGION( 0x500000, "maincpu", 0 )
	ROM_LOAD16_WORD_SWAP( "257la01.p1",  0x000000, 0x100000, CRC(dccee7c7) SHA1(07a33210501008f2843b7653a0e0e229d34c0ac7) )
	ROM_LOAD16_WORD_SWAP( "257la01.p2",  0x100000, 0x400000, CRC(48a1a381) SHA1(c32a7303c351422f66a3c0a535b01dbbdfca7d91) )

	NEO_SFIX_MT_512K

	NEO_BIOS_AUDIO_256K( "257d.m1", CRC(d404db70) SHA1(8cd1f3e140a9a367de23544e76371b0491287909) )

	ROM_REGION( 0x1000000, "ymsnd:adpcma", 0 )
	ROM_LOAD( "257.v1", 0x000000, 0x400000, CRC(17cde847) SHA1(4bcc0205b70dc6d9216b29025450c9c5b08cb65d) )
	ROM_LOAD( "257.v2", 0x400000, 0x400000, CRC(1afb20ff) SHA1(57dfd2de058139345ff2b744a225790baaecd5a2) )
	ROM_LOAD( "257.v3", 0x800000, 0x400000, CRC(4605036a) SHA1(51b228a0600d38a6ec37aec4822879ec3b0ee106) )
	ROM_LOAD( "257.v4", 0xc00000, 0x400000, CRC(764bbd6b) SHA1(df23c09ca6cf7d0ae5e11ff16e30c159725106b3) )

	ROM_REGION( 0x4000000, "sprites", 0 )
	ROM_LOAD16_BYTE( "257d.c1", 0x0000000, 0x800000, CRC(abcdd424) SHA1(1d52aae8a7806d48c098c2a7a77dff6e02ac4870) )
	ROM_LOAD16_BYTE( "257d.c2", 0x0000001, 0x800000, CRC(cda33778) SHA1(a619740364c952c443f27ed9b7c395610f2673c7) )
	ROM_LOAD16_BYTE( "257d.c3", 0x1000000, 0x800000, CRC(087fb15b) SHA1(f77cb6e670cdf7709d84d770ecf28533cbfbe6de) )
	ROM_LOAD16_BYTE( "257d.c4", 0x1000001, 0x800000, CRC(fe9dfde4) SHA1(23750ff0c4bc084d55eea66a5cdd0ef2d6c32cdc) )
	ROM_LOAD16_BYTE( "257d.c5", 0x2000000, 0x800000, CRC(03ee4bf4) SHA1(8f26c5bc525a5786de8e25797e2875a1dfe527be) )
	ROM_LOAD16_BYTE( "257d.c6", 0x2000001, 0x800000, CRC(8599cc5b) SHA1(9a05fc12273aebfbc4ac22e88b32ae9ecd269462) )
	ROM_LOAD16_BYTE( "257bsd.c7", 0x3000000, 0x800000, CRC(110f72a3) SHA1(7540aa2be692fbbcd887c8377ca6891d1ba1b6ed) )
	ROM_LOAD16_BYTE( "257bsd.c8", 0x3000001, 0x800000, CRC(4347f6af) SHA1(fc744d68e04905af1fa8d39d8772fba67e14777f) )
ROM_END

/*    YEAR  NAME           PARENT    MACHINE     INPUT     INIT            MONITOR COMPANY         FULLNAME FLAGS */
//The King of Fighters 2000
GAME( 2021, kof2000la01,     kof2000,  neogeo_noslot, neogeo, neogeo_state,  init_kof2000,   ROT0, "hack",    "Kof2000 (Special Edition Final Version 2021)", MACHINE_SUPPORTS_SAVE )
