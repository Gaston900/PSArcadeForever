// license:BSD-3-Clause
// copyright-holders:Robbbert
#include "../mame/drivers/arkanoid.cpp"

ROM_START( akblc2dx )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "akblc2dx.bin",  0x0000,  0x10000, CRC(e8ca9820) SHA1(ac97ebf285d1b8dd216dfc7024f7630fceac50b6) )

	ROM_REGION( 0x18000, "gfx1", 0 )
	ROM_LOAD( "a75-03.ic64",   0x00000, 0x8000, CRC(038b74ba) SHA1(ac053cc4908b4075f918748b89570e07a0ba5116) )
	ROM_LOAD( "a75-04.ic63",   0x08000, 0x8000, CRC(71fae199) SHA1(5d253c46ccf4cd2976a5fb8b8713f0f345443d06) )
	ROM_LOAD( "a75-05.ic62",   0x10000, 0x8000, CRC(c76374e2) SHA1(7520dd48de20db60a2038f134dcaa454988e7874) )

	ROM_REGION( 0x0600, "proms", 0 )
	ROM_LOAD( "a75-07.ic24",   0x0000, 0x0200, CRC(0af8b289) SHA1(6bc589e8a609b4cf450aebedc8ce02d5d45c970f) )
	ROM_LOAD( "a75-08.ic23",   0x0200, 0x0200, CRC(abb002fb) SHA1(c14f56b8ef103600862e7930709d293b0aa97a73) )
	ROM_LOAD( "a75-09.ic22",   0x0400, 0x0200, CRC(a7c6c277) SHA1(adaa003dcd981576ea1cc5f697d709b2d6b2ea29) )
ROM_END

ROM_START( akgcdx )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "akgcdx.bin",    0x0000,  0x10000, CRC(6e6ba560) SHA1(477a68caa1a9d0ce6e21f1164f8ec01434011308) )

	ROM_REGION( 0x18000, "gfx1", 0 )
	ROM_LOAD( "a75-03.ic64",   0x00000, 0x8000, CRC(038b74ba) SHA1(ac053cc4908b4075f918748b89570e07a0ba5116) )
	ROM_LOAD( "a75-04.ic63",   0x08000, 0x8000, CRC(71fae199) SHA1(5d253c46ccf4cd2976a5fb8b8713f0f345443d06) )
	ROM_LOAD( "a75-05.ic62",   0x10000, 0x8000, CRC(c76374e2) SHA1(7520dd48de20db60a2038f134dcaa454988e7874) )

	ROM_REGION( 0x0600, "proms", 0 )
	ROM_LOAD( "a75-07.ic24",   0x0000, 0x0200, CRC(0af8b289) SHA1(6bc589e8a609b4cf450aebedc8ce02d5d45c970f) )
	ROM_LOAD( "a75-08.ic23",   0x0200, 0x0200, CRC(abb002fb) SHA1(c14f56b8ef103600862e7930709d293b0aa97a73) )
	ROM_LOAD( "a75-09.ic22",   0x0400, 0x0200, CRC(a7c6c277) SHA1(adaa003dcd981576ea1cc5f697d709b2d6b2ea29) )
ROM_END

ROM_START( aktaytdx )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "aktaytdx.bin",  0x0000,  0x10000, CRC(8606f0ee) SHA1(d1edb58a9b29a354023484089d0ca5f32e9985e4) )

	ROM_REGION( 0x18000, "gfx1", 0 )
	ROM_LOAD( "a75-03.ic64",   0x00000, 0x8000, CRC(038b74ba) SHA1(ac053cc4908b4075f918748b89570e07a0ba5116) )
	ROM_LOAD( "a75-04.ic63",   0x08000, 0x8000, CRC(71fae199) SHA1(5d253c46ccf4cd2976a5fb8b8713f0f345443d06) )
	ROM_LOAD( "a75-05.ic62",   0x10000, 0x8000, CRC(c76374e2) SHA1(7520dd48de20db60a2038f134dcaa454988e7874) )

	ROM_REGION( 0x0600, "proms", 0 )
	ROM_LOAD( "a75-07.ic24",   0x0000, 0x0200, CRC(0af8b289) SHA1(6bc589e8a609b4cf450aebedc8ce02d5d45c970f) )
	ROM_LOAD( "a75-08.ic23",   0x0200, 0x0200, CRC(abb002fb) SHA1(c14f56b8ef103600862e7930709d293b0aa97a73) )
	ROM_LOAD( "a75-09.ic22",   0x0400, 0x0200, CRC(a7c6c277) SHA1(adaa003dcd981576ea1cc5f697d709b2d6b2ea29) )
ROM_END

ROM_START( arkll32 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "lle_a75_01-1.rom", 0x0000, 0x8000, CRC(8e6d7e7f) SHA1(3682c548c1bc3ceea2ff685fc5b82e61ed0044d2) )
	ROM_LOAD( "lle_a75_11.rom",   0x8000, 0x8000, CRC(845fa7b0) SHA1(e89ab456281bcb83a61a89b347dc93303928d365) )

	ROM_REGION( 0x0800, "mcu:mcu", 0 )
	ROM_LOAD( "a75-06__bootleg_68705.ic14", 0x0000, 0x0800, CRC(515d77b6) SHA1(a302937683d11f663abd56a2fd7c174374e4d7fb) )

	ROM_REGION( 0x18000, "gfx1", 0 )
	ROM_LOAD( "a75-03.ic64",   0x00000, 0x8000, CRC(038b74ba) SHA1(ac053cc4908b4075f918748b89570e07a0ba5116) )
	ROM_LOAD( "a75-04.ic63",   0x08000, 0x8000, CRC(71fae199) SHA1(5d253c46ccf4cd2976a5fb8b8713f0f345443d06) )
	ROM_LOAD( "a75-05.ic62",   0x10000, 0x8000, CRC(c76374e2) SHA1(7520dd48de20db60a2038f134dcaa454988e7874) )

	ROM_REGION( 0x0600, "proms", 0 )
	ROM_LOAD( "a75-07.ic24",   0x0000, 0x0200, CRC(0af8b289) SHA1(6bc589e8a609b4cf450aebedc8ce02d5d45c970f) )
	ROM_LOAD( "a75-08.ic23",   0x0200, 0x0200, CRC(abb002fb) SHA1(c14f56b8ef103600862e7930709d293b0aa97a73) )
	ROM_LOAD( "a75-09.ic22",   0x0400, 0x0200, CRC(a7c6c277) SHA1(adaa003dcd981576ea1cc5f697d709b2d6b2ea29) )
ROM_END

ROM_START( arkcrsn5 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "cruisin5.3f",   0x0000, 0x8000, CRC(41ed7668) SHA1(afd1600317d210b6da2c63a65f1614be1f77854b) )
	ROM_LOAD( "cruisin5.5f",   0x8000, 0x8000, CRC(77e310cc) SHA1(e2638bf6c565df9dab98d92c857d2212b150a2d1) )

	ROM_REGION( 0x18000, "gfx1", 0 )
	ROM_LOAD( "cruisin5.2c",   0x00000, 0x8000, CRC(7fb9dafc) SHA1(74a312729f10ab4753204b41de59ff41b93e80cb) )
	ROM_LOAD( "cruisin5.3c",   0x08000, 0x8000, CRC(05229af9) SHA1(76c469506430bc23ee77bbcefbc357478437bba7) )
	ROM_LOAD( "cruisin5.5c",   0x10000, 0x8000, CRC(a4c1a25f) SHA1(29d49572c1e7c6c8ac428ad2a3e625f0f548f66c) )

	ROM_REGION( 0x0600, "proms", 0 )
	ROM_LOAD( "a75-07.ic24",   0x0000, 0x0200, CRC(0af8b289) SHA1(6bc589e8a609b4cf450aebedc8ce02d5d45c970f) )
	ROM_LOAD( "a75-08.ic23",   0x0200, 0x0200, CRC(abb002fb) SHA1(c14f56b8ef103600862e7930709d293b0aa97a73) )
	ROM_LOAD( "a75-09.ic22",   0x0400, 0x0200, CRC(a7c6c277) SHA1(adaa003dcd981576ea1cc5f697d709b2d6b2ea29) )
ROM_END


GAME( 2000, akblc2dx, arkanoid, bootleg,  arkangc,   arkanoid_state, init_arkblock, ROT90, "hack", "Block Deluxe (Game Corporation)", MACHINE_SUPPORTS_SAVE )
GAME( 2000, akgcdx,   arkanoid, bootleg,  arkangc,   arkanoid_state, init_arkgcbl,  ROT90, "hack", "Arkanoid Deluxe (Game Corporation)", MACHINE_SUPPORTS_SAVE )
GAME( 2000, aktaytdx, arkanoid, bootleg,  arktayt2,  arkanoid_state, empty_init,    ROT90, "hack", "Arkanoid Deluxe (Japan, Tayto)", MACHINE_SUPPORTS_SAVE )
GAME( 2000, arkll32,  arkanoid, p3mcu,    arkanoidj, arkanoid_state, empty_init,    ROT90, "hack", "Arkanoid LL32", MACHINE_NOT_WORKING | MACHINE_SUPPORTS_SAVE ) // broke 2022 after Z80 change
GAME( 2023, arkcrsn5, arkanoid, aysnd,    arkatayt,  arkanoid_state, empty_init,    ROT90, "Abyss", "Cruisin 5 (demo)", MACHINE_SUPPORTS_SAVE )

