.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "NavigationRailView.java"


# static fields
.field private static final DEFAULT_HEADER_GRAVITY:I = 0x31

.field static final DEFAULT_MENU_GRAVITY:I = 0x31

.field static final MAX_ITEM_COUNT:I = 0x7


# instance fields
.field private headerView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
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
    .line 106
    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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
    .line 111
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_NavigationRailView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 119
    .local v8, "res":Landroid/content/res/Resources;
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    sget-object v2, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    new-array v5, v9, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    .line 129
    .local v6, "attributes":Landroidx/appcompat/widget/TintTypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->NavigationRailView_headerLayout:I

    invoke-virtual {v6, v0, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    .line 130
    .local v7, "headerLayoutRes":I
    if-eqz v7, :cond_0

    .line 131
    invoke-virtual {p0, v7}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(I)V

    .line 134
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->NavigationRailView_menuGravity:I

    const/16 v1, 0x31

    .line 135
    invoke-virtual {v6, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 136
    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    return-object v0
.end method

.method private isHeaderViewVisible()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMinWidthSpec(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 265
    .local v0, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    if-lez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 268
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 272
    .end local p1    # "measureSpec":I
    :cond_0
    return p1
.end method


# virtual methods
.method public addHeaderView(I)V
    .locals 2
    .param p1, "layoutRes"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "headerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x2

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeHeaderView()V

    .line 201
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 206
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
.end method

.method protected bridge synthetic createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    return-object v0
.end method

.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x7

    return v0
.end method

.method public getMenuGravity()I
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 153
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/navigation/NavigationBarView;->onLayout(ZIIII)V

    .line 155
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v1

    .line 156
    .local v1, "menuView":Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    const/4 v2, 0x0

    .line 157
    .local v2, "offsetY":I
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    iget-object v4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    add-int v3, v4, v5

    .line 159
    .local v3, "usedTop":I
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    move-result v0

    .line 160
    .local v0, "menuTop":I
    if-ge v0, v3, :cond_0

    .line 161
    sub-int v2, v3, v0

    .line 167
    .end local v0    # "menuTop":I
    .end local v3    # "usedTop":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLeft()I

    move-result v4

    .line 170
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    .line 171
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getRight()I

    move-result v6

    .line 172
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getBottom()I

    move-result v7

    add-int/2addr v7, v2

    .line 168
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layout(IIII)V

    .line 174
    :cond_1
    return-void

    .line 163
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isTopGravity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->makeMinWidthSpec(I)I

    move-result v2

    .line 142
    .local v2, "minWidthSpec":I
    invoke-super {p0, v2, p2}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    sub-int v0, v3, v4

    .line 146
    .local v0, "maxMenuHeight":I
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 147
    .local v1, "menuHeightSpec":I
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    .line 149
    .end local v0    # "maxMenuHeight":I
    .end local v1    # "menuHeightSpec":I
    :cond_0
    return-void
.end method

.method public removeHeaderView()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeView(Landroid/view/View;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 234
    :cond_0
    return-void
.end method

.method public setMenuGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMenuGravity(I)V

    .line 239
    return-void
.end method
