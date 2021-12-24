.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 13
    .param p1, "layout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v9, 0x0

    .line 1597
    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p2, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 1599
    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v10}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    .line 1601
    .local v4, "insetTop":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v8

    .local v8, "z":I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 1602
    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v10, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1603
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 1604
    .local v5, "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v6

    .line 1606
    .local v6, "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    iget v10, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    packed-switch v10, :pswitch_data_0

    .line 1601
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "insetTop":I
    .end local v5    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    .end local v8    # "z":I
    :cond_0
    move v4, v9

    .line 1599
    goto :goto_0

    .line 1608
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "insetTop":I
    .restart local v5    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .restart local v6    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    .restart local v8    # "z":I
    :pswitch_0
    neg-int v10, p2

    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1609
    invoke-virtual {v11, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v11

    invoke-static {v10, v9, v11}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v10

    .line 1608
    invoke-virtual {v6, v10}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1612
    :pswitch_1
    neg-int v10, p2

    int-to-float v10, v10

    iget v11, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1620
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :cond_1
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1622
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    if-lez v4, :cond_2

    .line 1623
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1627
    :cond_2
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    .line 1628
    .local v2, "height":I
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1629
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int v9, v2, v9

    sub-int v1, v9, v4

    .line 1630
    .local v1, "expandRange":I
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v9

    sub-int v7, v2, v9

    .line 1631
    .local v7, "scrimRange":I
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v7

    int-to-float v12, v1

    div-float/2addr v11, v12

    .line 1632
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1631
    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    .line 1633
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v10, v1

    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCurrentOffsetY(I)V

    .line 1634
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1635
    return-void

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
