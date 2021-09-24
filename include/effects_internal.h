#ifndef _EFFECT_INTERNAL_H_
#define _EFFECT_INTERNAL_H_

#include "effects.h"

u32 func_E0200000(s32);

EffectInstance* shim_create_effect_instance(EffectBlueprint* effectBp);
void shim_remove_effect(EffectInstance*);
void* shim_general_heap_malloc(s32 size);
f32 shim_sin_deg(f32 x);
f32 shim_cos_deg(f32 x);

#endif
