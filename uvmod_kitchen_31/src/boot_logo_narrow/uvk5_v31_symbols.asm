/* useful functions */
.equ copymem        , 0x01A0
.equ drawStatusBar  , 0xB720
.equ drawMainScreen , 0xB6A8
.equ zeromemory     , 0x01D2
.equ fillmemory     , 0x01C4


/* other addresses */
.equ LCD_BUFFER_START, 0x20000684
.equ LCD_BUFFER_SIZE,  0x400


.equ STATUS_SCAN_MODE  , 0x200003D8
.equ STATUS_FKEY_ACTIVE, 0x20000367
.equ BATTERY_LVL_BARS  , 0x2000037A
.equ BATT_CHARGING     , 0x2000037D


/* top bar icons */
.equ TOP_BAR_ICONS_START, 0xD429
.equ ICON__S_OFFSET,      0x0




/* useful macros */
.macro _copymem dst, src, len
    LDR     R2, =\len    @Length
    LDR     R1, =\src    @Source address
    LDR     R0, =\dst    @Destination address
    BL      copymem
.endm
