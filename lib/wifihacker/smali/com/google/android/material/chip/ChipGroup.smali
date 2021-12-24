.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private checkedId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private protectFromCheckedChange:Z

.field private selectionRequired:Z

.field private singleSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    sput v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 118
    sget v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 102
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 106
    iput v10, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 107
    iput-boolean v9, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    sget-object v2, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    sget v4, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    new-array v5, v9, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 126
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 127
    .local v8, "chipSpacing":I
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 128
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 129
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 130
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 131
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 132
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 133
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_selectionRequired:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    .line 134
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 135
    .local v7, "checkedChip":I
    if-eq v7, v10, :cond_0

    .line 136
    iput v7, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 139
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Lcom/google/android/material/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 142
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 143
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method private getChipCount()I
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 378
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    .line 379
    add-int/lit8 v0, v0, 0x1

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_1
    return v0
.end method

.method private setCheckedId(I)V
    .locals 1
    .param p1, "checkedId"    # I

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(IZ)V

    .line 356
    return-void
.end method

.method private setCheckedId(IZ)V
    .locals 1
    .param p1, "checkedId"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 359
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 361
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 364
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "checked"    # Z

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 368
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_0

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 370
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 371
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 203
    instance-of v1, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 205
    .local v0, "chip":Lcom/google/android/material/chip/Chip;
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_0

    .line 207
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 213
    .end local v0    # "chip":Lcom/google/android/material/chip/Chip;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 264
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_1

    .line 269
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 272
    :cond_1
    if-eq p1, v2, :cond_2

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 276
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 334
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    .line 336
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 341
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 342
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 176
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "checkedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 309
    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 311
    check-cast v3, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v3, :cond_1

    .line 320
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return-object v0

    .line 308
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 421
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 441
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method getIndexOfChip(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 391
    instance-of v4, p1, Lcom/google/android/material/chip/Chip;

    if-nez v4, :cond_1

    move v2, v3

    .line 404
    :cond_0
    :goto_0
    return v2

    .line 394
    :cond_1
    const/4 v2, 0x0

    .line 395
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_2

    .line 397
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 398
    .local v0, "chip":Lcom/google/android/material/chip/Chip;
    if-eq v0, p1, :cond_0

    .line 401
    add-int/lit8 v2, v2, 0x1

    .line 395
    .end local v0    # "chip":Lcom/google/android/material/chip/Chip;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 404
    goto :goto_0
.end method

.method public isSelectionRequired()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleLine()Z
    .locals 1

    .prologue
    .line 462
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v0

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->onFinishInflate()V

    .line 195
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 196
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 197
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 148
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 150
    .local v1, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getChipCount()I

    move-result v0

    .line 153
    .local v0, "columnCount":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getRowCount()I

    move-result v3

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 152
    :goto_1
    invoke-static {v3, v0, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 159
    return-void

    .line 150
    .end local v0    # "columnCount":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 156
    .restart local v0    # "columnCount":I
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public setChipSpacing(I)V
    .locals 0
    .param p1, "chipSpacing"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 411
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1
    .param p1, "chipSpacingHorizontal"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 426
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 427
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 428
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 431
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 436
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 416
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1
    .param p1, "chipSpacingVertical"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 446
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_0

    .line 447
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 448
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 451
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 456
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .locals 2
    .param p1, "flexWrap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .line 352
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 188
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "selectionRequired"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->selectionRequired:Z

    .line 512
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 2
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .locals 2
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 475
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setSingleLine(Z)V

    .line 470
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 502
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->clearCheck()V

    .line 493
    :cond_0
    return-void
.end method
