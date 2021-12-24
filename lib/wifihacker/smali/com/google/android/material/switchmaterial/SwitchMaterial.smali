.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SwitchMaterial.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 46
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_Switch:I

    sput v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    sget v0, Lcom/google/android/material/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x0

    .line 70
    sget v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 76
    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    sget v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 80
    .local v6, "attributes":Landroid/content/res/TypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    .line 81
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 83
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    .line 121
    iget-object v5, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_1

    .line 122
    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v1

    .line 123
    .local v1, "colorSurface":I
    sget v5, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 124
    .local v0, "colorControlActivated":I
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_switch_thumb_elevation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 125
    .local v4, "thumbElevation":F
    iget-object v5, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-virtual {v5}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v5

    add-float/2addr v4, v5

    .line 128
    :cond_0
    iget-object v5, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 129
    invoke-virtual {v5, v1, v4}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v2

    .line 131
    .local v2, "colorThumbOff":I
    sget-object v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v5, v5

    new-array v3, v5, [I

    .line 132
    .local v3, "switchThumbColorsList":[I
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 133
    invoke-static {v1, v0, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v3, v5

    .line 134
    const/4 v5, 0x1

    aput v2, v3, v5

    .line 135
    const/4 v5, 0x2

    const v6, 0x3ec28f5c    # 0.38f

    .line 136
    invoke-static {v1, v0, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v3, v5

    .line 137
    const/4 v5, 0x3

    aput v2, v3, v5

    .line 138
    new-instance v5, Landroid/content/res/ColorStateList;

    sget-object v6, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    invoke-direct {v5, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 141
    .end local v0    # "colorControlActivated":I
    .end local v1    # "colorSurface":I
    .end local v2    # "colorThumbOff":I
    .end local v3    # "switchThumbColorsList":[I
    .end local v4    # "thumbElevation":F
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    return-object v5
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const v6, 0x3df5c28f    # 0.12f

    .line 145
    iget-object v4, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 146
    sget-object v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 147
    .local v3, "switchTrackColorsList":[I
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 148
    .local v2, "colorSurface":I
    sget v4, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 149
    .local v0, "colorControlActivated":I
    sget v4, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v1

    .line 150
    .local v1, "colorOnSurface":I
    const/4 v4, 0x0

    const v5, 0x3f0a3d71    # 0.54f

    .line 151
    invoke-static {v2, v0, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v3, v4

    .line 152
    const/4 v4, 0x1

    const v5, 0x3ea3d70a    # 0.32f

    .line 153
    invoke-static {v2, v1, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v3, v4

    .line 154
    const/4 v4, 0x2

    .line 155
    invoke-static {v2, v0, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v3, v4

    .line 157
    const/4 v4, 0x3

    .line 158
    invoke-static {v2, v1, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v5

    aput v5, v3, v4

    .line 159
    new-instance v4, Landroid/content/res/ColorStateList;

    sget-object v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v4, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 162
    .end local v0    # "colorControlActivated":I
    .end local v1    # "colorOnSurface":I
    .end local v2    # "colorSurface":I
    .end local v3    # "switchTrackColorsList":[I
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    return-object v4
.end method


# virtual methods
.method public isUseMaterialThemeColors()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->onAttachedToWindow()V

    .line 90
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 1
    .param p1, "useMaterialThemeColors"    # Z

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
