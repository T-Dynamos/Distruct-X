.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "MaterialToolbar.java"


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private navigationIconTint:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private subtitleCentered:Z

.field private titleCentered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
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
    .line 81
    sget v0, Lcom/google/android/material/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
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

    .line 85
    sget v0, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialToolbar:[I

    sget v4, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 93
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget v0, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    .line 97
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->MaterialToolbar_titleCentered:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 98
    sget v0, Lcom/google/android/material/R$styleable;->MaterialToolbar_subtitleCentered:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 100
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->initBackground(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
    .locals 9
    .param p1, "titleTextView"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "subtitleTextView"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    move-result v5

    .line 138
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 139
    .local v3, "midpoint":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingLeft()I

    move-result v2

    .line 140
    .local v2, "leftLimit":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 142
    .local v4, "rightLimit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 143
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 148
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v4, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    new-instance v6, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private initBackground(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v3, :cond_0

    .line 275
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 268
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 269
    .local v2, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 270
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 271
    .local v1, "backgroundColor":I
    :goto_1
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 272
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 273
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 274
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 270
    .end local v1    # "backgroundColor":I
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V
    .locals 10
    .param p1, "titleView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "titleBoundLimits":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    move-result v6

    .line 160
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 162
    .local v5, "titleWidth":I
    div-int/lit8 v7, v6, 0x2

    div-int/lit8 v8, v5, 0x2

    sub-int v3, v7, v8

    .line 163
    .local v3, "titleLeft":I
    add-int v4, v3, v5

    .line 165
    .local v4, "titleRight":I
    iget-object v7, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 166
    .local v0, "leftOverlap":I
    iget-object v7, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, v4, v7

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 167
    .local v2, "rightOverlap":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    .local v1, "overlap":I
    if-lez v1, :cond_0

    .line 170
    add-int/2addr v3, v1

    .line 171
    sub-int/2addr v4, v1

    .line 172
    sub-int v5, v4, v3

    .line 173
    const/high16 v7, 0x40000000    # 2.0f

    .line 174
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v8

    .line 173
    invoke-virtual {p1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p1, v3, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 179
    return-void
.end method

.method private maybeCenterTitleViews()V
    .locals 4

    .prologue
    .line 113
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    move-result-object v2

    .line 118
    .local v2, "titleTextView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    .local v0, "subtitleTextView":Landroid/widget/TextView;
    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    .line 124
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;

    move-result-object v1

    .line 126
    .local v1, "titleBoundLimits":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 127
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    .line 130
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    goto :goto_0
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "navigationIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 280
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    .local v0, "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 284
    .end local v0    # "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public isSubtitleCentered()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    return v0
.end method

.method public isTitleCentered()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 185
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 107
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeCenterTitleViews()V

    .line 110
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 193
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 194
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-void
.end method

.method public setNavigationIconTint(I)V
    .locals 2
    .param p1, "navigationIconTint"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    .local v0, "navigationIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    return-void
.end method

.method public setSubtitleCentered(Z)V
    .locals 1
    .param p1, "subtitleCentered"    # Z

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-eq v0, p1, :cond_0

    .line 248
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 251
    :cond_0
    return-void
.end method

.method public setTitleCentered(Z)V
    .locals 1
    .param p1, "titleCentered"    # Z

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-eq v0, p1, :cond_0

    .line 224
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 225
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 227
    :cond_0
    return-void
.end method