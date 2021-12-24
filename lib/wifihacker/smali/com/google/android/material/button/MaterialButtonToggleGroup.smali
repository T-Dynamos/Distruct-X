.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private checkedId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

.field private childOrder:[Ljava/lang/Integer;

.field private final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCornerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field private selectionRequired:Z

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    .line 140
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
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
    .line 180
    sget v0, Lcom/google/android/material/R$attr;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
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
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 185
    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 146
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 147
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    .line 149
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    .line 169
    iput-boolean v7, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 188
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup:[I

    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 189
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 192
    .local v6, "attributes":Landroid/content/res/TypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    .line 193
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 194
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    const/4 v1, -0x1

    .line 195
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 196
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_selectionRequired:I

    .line 197
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 198
    invoke-virtual {p0, v8}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 199
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p0, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 202
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v1

    .line 527
    .local v1, "firstVisibleChildIndex":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 555
    :goto_0
    return-void

    .line 531
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 533
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 534
    .local v0, "currentButton":Lcom/google/android/material/button/MaterialButton;
    add-int/lit8 v6, v2, -0x1

    invoke-direct {p0, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 538
    .local v4, "previousButton":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 540
    .local v5, "smallestStrokeWidth":I
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 541
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v6

    if-nez v6, :cond_1

    .line 542
    invoke-static {v3, v8}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 543
    neg-int v6, v5

    invoke-static {v3, v6}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 544
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 551
    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 546
    :cond_1
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 547
    neg-int v6, v5

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 548
    invoke-static {v3, v8}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_2

    .line 554
    .end local v0    # "currentButton":Lcom/google/android/material/button/MaterialButton;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "previousButton":Lcom/google/android/material/button/MaterialButton;
    .end local v5    # "smallestStrokeWidth":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->resetChildMargins(I)V

    goto :goto_0
.end method

.method private buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 764
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 765
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 768
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v0

    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method private checkForced(IZ)V
    .locals 1
    .param p1, "checkedId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 730
    .local v0, "button":Lcom/google/android/material/button/MaterialButton;
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .locals 3
    .param p1, "buttonId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "checked"    # Z

    .prologue
    .line 723
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 724
    .local v0, "listener":Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    goto :goto_0

    .line 726
    .end local v0    # "listener":Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    :cond_0
    return-void
.end method

.method private getChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    return-object v0
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 602
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 603
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 602
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getIndexWithinVisibleButtons(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 638
    instance-of v3, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v3, :cond_1

    move v1, v2

    .line 650
    :cond_0
    :goto_0
    return v1

    .line 641
    :cond_1
    const/4 v1, 0x0

    .line 642
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 643
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 646
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 642
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 650
    goto :goto_0
.end method

.method private getLastVisibleChildIndex()I
    .locals 3

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 613
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 614
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 613
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 619
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 3
    .param p1, "index"    # I
    .param p2, "firstVisibleChildIndex"    # I
    .param p3, "lastVisibleChildIndex"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 656
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 659
    .local v0, "cornerData":Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    if-ne p2, p3, :cond_0

    move-object v2, v0

    .line 672
    :goto_0
    return-object v2

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 664
    .local v1, "isHorizontal":Z
    :goto_1
    if-ne p1, p2, :cond_3

    .line 665
    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->start(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_0

    .line 663
    .end local v1    # "isHorizontal":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 665
    .restart local v1    # "isHorizontal":Z
    :cond_2
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->top(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_0

    .line 668
    :cond_3
    if-ne p1, p3, :cond_5

    .line 669
    if-eqz v1, :cond_4

    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->end(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottom(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_0

    .line 672
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getVisibleButtonCount()I
    .locals 3

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 630
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    add-int/lit8 v0, v0, 0x1

    .line 629
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_1
    return v0
.end method

.method private isChildVisible(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetChildMargins(I)V
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 567
    .local v0, "currentButton":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 569
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 570
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {v1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 575
    invoke-static {v1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 576
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 577
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private setCheckedId(I)V
    .locals 1
    .param p1, "checkedId"    # I

    .prologue
    .line 509
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 511
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 512
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
    .line 500
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 503
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 506
    :cond_0
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "materialButton"    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 737
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 738
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    .line 740
    :cond_0
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "buttonChild"    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 750
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 751
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 752
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 754
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    .line 755
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 758
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 759
    return-void
.end method

.method private static updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V
    .locals 2
    .param p0, "shapeAppearanceModelBuilder"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .param p1, "cornerData"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 687
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lcom/google/android/material/shape/CornerSize;

    .line 683
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lcom/google/android/material/shape/CornerSize;

    .line 684
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lcom/google/android/material/shape/CornerSize;

    .line 685
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lcom/google/android/material/shape/CornerSize;

    .line 686
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    goto :goto_0
.end method

.method private updateCheckedStates(IZ)Z
    .locals 6
    .param p1, "childId"    # I
    .param p2, "childIsChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, "checkedButtonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    invoke-direct {p0, p1, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 707
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    move v2, v3

    .line 719
    :goto_0
    return v2

    .line 712
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v2, :cond_1

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 715
    .local v0, "buttonId":I
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 716
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    goto :goto_1

    .end local v0    # "buttonId":I
    :cond_1
    move v2, v4

    .line 719
    goto :goto_0
.end method

.method private updateChildOrder()V
    .locals 5

    .prologue
    .line 786
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 787
    .local v2, "viewToIndexMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lcom/google/android/material/button/MaterialButton;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 788
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 789
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    :cond_0
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    .line 793
    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 226
    instance-of v2, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v2, :cond_0

    .line 227
    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Child views must be of type MaterialButton."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 233
    .local v0, "buttonChild":Lcom/google/android/material/button/MaterialButton;
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    .line 238
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    .line 240
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 245
    .local v1, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    new-instance v3, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 249
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 250
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    .line 245
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_0
.end method

.method public check(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 330
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(IZ)V

    goto :goto_0
.end method

.method public clearChecked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 362
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 363
    .local v0, "child":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 365
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "child":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 369
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 370
    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 442
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildOrder()V

    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 218
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 300
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedButtonId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
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
    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "checkedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 407
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 408
    .local v1, "child":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "child":Lcom/google/android/material/button/MaterialButton;
    :cond_1
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 778
    :cond_0
    sget-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Child order wasn\'t updated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local p2    # "i":I
    :goto_0
    return p2

    .restart local p2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public isSelectionRequired()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 209
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(IZ)V

    .line 212
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
    const/4 v2, 0x1

    .line 305
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 306
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 310
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    move-result v3

    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isSingleSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 308
    :goto_0
    invoke-static {v2, v3, v4, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 315
    return-void

    .line 312
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 294
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 295
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 275
    instance-of v1, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 276
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    move-object v1, p1

    .line 277
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 281
    .local v0, "indexOfChild":I
    if-ltz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 287
    return-void
.end method

.method public removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "selectionRequired"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 476
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 497
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 464
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    .line 465
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    .line 467
    :cond_0
    return-void
.end method

.method public uncheck(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(IZ)V

    .line 348
    return-void
.end method

.method updateChildShapes()V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    .line 584
    .local v2, "childCount":I
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v3

    .line 585
    .local v3, "firstVisibleChildIndex":I
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I

    move-result v5

    .line 586
    .local v5, "lastVisibleChildIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 587
    invoke-direct {p0, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 588
    .local v1, "button":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 586
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 593
    .local v0, "builder":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v6

    .line 594
    .local v6, "newCornerData":Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    invoke-static {v0, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V

    .line 596
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    goto :goto_1

    .line 598
    .end local v0    # "builder":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .end local v1    # "button":Lcom/google/android/material/button/MaterialButton;
    .end local v6    # "newCornerData":Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    :cond_1
    return-void
.end method
