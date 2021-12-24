.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field private layoutDirection:I

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/material/tabs/TabLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 2968
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2969
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2961
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2966
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2971
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # F

    .prologue
    .line 2959
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method

.method private jumpIndicatorToSelectedPosition()V
    .locals 4

    .prologue
    .line 3107
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3108
    .local v0, "currentView":Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 3110
    return-void
.end method

.method private tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V
    .locals 7
    .param p1, "startTitle"    # Landroid/view/View;
    .param p2, "endTitle"    # Landroid/view/View;
    .param p3, "fraction"    # F

    .prologue
    const/4 v3, -0x1

    .line 3128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 3129
    .local v6, "hasVisibleTitle":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    .line 3138
    :goto_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3139
    return-void

    .line 3128
    .end local v6    # "hasVisibleTitle":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 3134
    .restart local v6    # "hasVisibleTitle":Z
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3135
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 3134
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .locals 6
    .param p1, "recreateAnimation"    # Z
    .param p2, "position"    # I
    .param p3, "duration"    # I

    .prologue
    .line 3168
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3169
    .local v1, "currentView":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3170
    .local v2, "targetView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 3172
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    .line 3211
    :goto_0
    return-void

    .line 3178
    :cond_0
    new-instance v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;)V

    .line 3186
    .local v3, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_1

    .line 3188
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 3189
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3190
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3191
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3192
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3193
    new-instance v4, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;

    invoke-direct {v4, p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3205
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3208
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3209
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 3191
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3152
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3155
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    .line 3156
    return-void
.end method

.method childrenNeedLayout()Z
    .locals 4

    .prologue
    .line 2980
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2981
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2982
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 2983
    const/4 v3, 0x1

    .line 2986
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 2980
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2986
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3215
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 3216
    .local v3, "indicatorHeight":I
    if-gez v3, :cond_0

    .line 3217
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 3220
    :cond_0
    const/4 v4, 0x0

    .line 3221
    .local v4, "indicatorTop":I
    const/4 v1, 0x0

    .line 3223
    .local v1, "indicatorBottom":I
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    packed-switch v5, :pswitch_data_0

    .line 3245
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_2

    .line 3248
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3249
    .local v2, "indicatorBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6, v4, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3251
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v5, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3255
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 3256
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3257
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_3

    .line 3258
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3264
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3268
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v2    # "indicatorBounds":Landroid/graphics/Rect;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3269
    return-void

    .line 3225
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v5

    sub-int v4, v5, v3

    .line 3226
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    .line 3227
    goto :goto_0

    .line 3229
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v4, v5, 0x2

    .line 3230
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    .line 3231
    goto :goto_0

    .line 3233
    :pswitch_2
    const/4 v4, 0x0

    .line 3234
    move v1, v3

    .line 3235
    goto :goto_0

    .line 3237
    :pswitch_3
    const/4 v4, 0x0

    .line 3238
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    .line 3239
    goto :goto_0

    .line 3260
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "indicatorBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v5

    invoke-static {v0, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 3223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getIndicatorPosition()F
    .locals 2

    .prologue
    .line 3011
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3090
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3092
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    .line 3103
    :goto_0
    return-void

    .line 3101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3030
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 3032
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3041
    :cond_1
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 3042
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    .line 3045
    .local v1, "count":I
    const/4 v4, 0x0

    .line 3046
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_1
    if-ge v3, v7, :cond_4

    .line 3047
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3048
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 3049
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3046
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3053
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    if-lez v4, :cond_0

    .line 3058
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v8

    float-to-int v2, v8

    .line 3059
    .local v2, "gutter":I
    const/4 v6, 0x0

    .line 3061
    .local v6, "remeasure":Z
    mul-int v8, v4, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_7

    .line 3064
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_8

    .line 3065
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 3066
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v8, v4, :cond_5

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_6

    .line 3067
    :cond_5
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3068
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3069
    const/4 v6, 0x1

    .line 3064
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3076
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iput v12, v8, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 3077
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v8, v12}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 3078
    const/4 v6, 0x1

    .line 3081
    :cond_8
    if-eqz v6, :cond_0

    .line 3083
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3016
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 3020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 3021
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 3022
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 3023
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 3026
    :cond_0
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 2997
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2998
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3001
    :cond_0
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3002
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 3004
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3005
    .local v1, "selectedTitle":Landroid/view/View;
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3007
    .local v0, "nextTitle":Landroid/view/View;
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    .line 3008
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .prologue
    .line 2974
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2975
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2976
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2977
    return-void
.end method
