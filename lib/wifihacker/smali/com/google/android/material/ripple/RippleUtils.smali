.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ENABLED_PRESSED_STATE_SET:[I

.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field static final LOG_TAG:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field static final TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String; = "Use a non-transparent color for the default color as it will be used to finish ripple animations."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 44
    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 50
    new-array v0, v1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 53
    new-array v0, v1, [I

    const v3, 0x1010367

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 63
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 66
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 69
    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    .line 73
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 77
    const-class v0, Lcom/google/android/material/ripple/RippleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    .line 47
    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    .line 63
    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    .line 66
    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    .line 73
    :array_5
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    sget-boolean v4, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v4, :cond_0

    .line 113
    const/4 v2, 0x2

    .line 115
    .local v2, "size":I
    new-array v3, v2, [[I

    .line 116
    .local v3, "states":[[I
    new-array v0, v2, [I

    .line 117
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 125
    .local v1, "i":I
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 126
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 130
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    aput-object v4, v3, v1

    .line 131
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 184
    :goto_0
    return-object v4

    .line 136
    .end local v0    # "colors":[I
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "states":[[I
    :cond_0
    const/16 v2, 0xa

    .line 138
    .restart local v2    # "size":I
    new-array v3, v2, [[I

    .line 139
    .restart local v3    # "states":[[I
    new-array v0, v2, [I

    .line 140
    .restart local v0    # "colors":[I
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "i":I
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 143
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 146
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 147
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 150
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 151
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 154
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 155
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 159
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 160
    aput v5, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 163
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 164
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 167
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 168
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 171
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 172
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 175
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    aput-object v4, v3, v1

    .line 176
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 180
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    aput-object v4, v3, v1

    .line 181
    aput v5, v0, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 184
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_0
.end method

.method private static doubleAlpha(I)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    .local v0, "alpha":I
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    return v1
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .locals 2
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "state"    # [I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 241
    if-eqz p0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 246
    .local v0, "color":I
    :goto_0
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_0
    return v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    if-eqz p0, :cond_1

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 207
    invoke-virtual {p0, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local p0    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .locals 7
    .param p0, "stateSet"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 224
    .local v1, "interactedState":Z
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget v2, p0, v4

    .line 225
    .local v2, "state":I
    const v6, 0x101009e

    if-ne v2, v6, :cond_1

    .line 226
    const/4 v0, 0x1

    .line 224
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const v6, 0x101009c

    if-ne v2, v6, :cond_2

    .line 228
    const/4 v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    const v6, 0x10100a7

    if-ne v2, v6, :cond_3

    .line 230
    const/4 v1, 0x1

    goto :goto_1

    .line 231
    :cond_3
    const v6, 0x1010367

    if-ne v2, v6, :cond_0

    .line 232
    const/4 v1, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "state":I
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3
.end method
