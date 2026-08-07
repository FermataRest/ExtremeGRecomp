#include "ultratypes.h"
#include "mbi.h"
#include "gbi.h"
#include "os.h"

s32 osViGetCurrentFramebuffer_recomp(void);

#define	GPACK_RGBA5551(r, g, b, a)	((((r)<<8) & 0xf800) | 		\
					 (((g)<<3) & 0x7c0) |		\
					 (((b)>>2) & 0x3e) | ((a) & 0x1))

#if 1
extern Gfx* D_801689EC[]; // gMasterDisp

void menu_bike_select_fill_background(void) {
    Gfx** gdl = D_801689EC;
    u32 width = 320;
    u32 height = 240;

    u8 red = 0;
    u8 green = 0;
    u8 blue = 0;

    u32 fill_color = GPACK_RGBA5551(red, green, blue, 1);

    gDPPipeSync((*gdl)++);
    gDPSetCycleType((*gdl)++, G_CYC_FILL);
    gDPSetColorImage((*gdl)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, osViGetCurrentFramebuffer_recomp());
    gDPSetFillColor((*gdl)++, (fill_color << 16) | fill_color);
    gDPFillRectangle((*gdl)++, 0, 0, width, height);
    gDPPipeSync((*gdl)++);
}
#endif