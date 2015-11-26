/**********************************************************************
 *
 * Function:    sevenseg_set_hex()
 *
 * Description: Decode hex number to format for 7-seg display.
 *              Also: sends data to the 7-seg display PIO
 *
 * Notes:       
 *
 * Returns:     The 7-seg-decoded values of a hex digit input.
 *
 **********************************************************************/
static void sevenseg_set_hex(int hex)
{
  static alt_u8 segments[16] = {
    0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, /* 0-9 */
    0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };                       /* a-f */

  unsigned int data = segments[hex & 15] | (segments[(hex >> 4) & 15] << 8);

  IOWR_ALTERA_AVALON_PIO_DATA(SEVEN_SEG_BASE, ~data);
}