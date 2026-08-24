#include "patches.h"
#include "sound.h"

extern f64 D_8004BD08;
extern f64 D_8004BD10;
extern f64 D_8004BD18;
extern void* D_80095D0C;
extern s32 D_80095D28;
extern s32 D_80095D30;
extern s32 D_80095D3C;

void EG_SetBgmVolume(void) {
    f64 temp_ft1;
    f64 var_fv1;
    f64 var_fv1_2;
    s16 var_a1;

    f32 bgm_volume = recomp_get_bgm_volume();

    if (1) {
        temp_ft1 = (f64) D_80095D28 * ((f64) D_80095D30 * D_8004BD08);
        var_fv1 = temp_ft1 * D_8004BD10;
        if (!(var_fv1 <= D_8004BD18)) {
            var_fv1 = D_8004BD18;
        }
        var_a1 = 0;
        if (!(var_fv1 <= 0.0f)) {
            var_fv1_2 = temp_ft1 * D_8004BD10;
            if (!(var_fv1_2 <= D_8004BD18)) {
                var_fv1_2 = D_8004BD18;
            }
            var_a1 = (s16) (s32) var_fv1_2;
        }

        // recomp_printf("recomp_get_bgm_volume output: %f\n ",  recomp_get_bgm_volume());
        alCSPSetVol(D_80095D0C, (s16)var_a1 * bgm_volume);
        D_80095D3C = 0;
    }
}