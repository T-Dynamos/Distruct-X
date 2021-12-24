.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .prologue
    .line 232
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xvel"    # F

    .prologue
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 293
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_6

    .line 295
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 297
    .local v1, "isRtl":Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 315
    .end local v1    # "isRtl":Z
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v4

    .line 295
    goto :goto_0

    .line 300
    .restart local v1    # "isRtl":Z
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v5, :cond_4

    .line 303
    if-eqz v1, :cond_3

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_3
    cmpl-float v5, p2, v7

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_1

    .line 304
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v5, v3, :cond_7

    .line 307
    if-eqz v1, :cond_5

    cmpl-float v5, p2, v7

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_5
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_1

    .line 310
    .end local v1    # "isRtl":Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int v0, v5, v6

    .line 311
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v6, v6, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 312
    .local v2, "thresholdDistance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_0

    move v3, v4

    goto :goto_1

    .end local v0    # "distance":I
    .end local v2    # "thresholdDistance":I
    .restart local v1    # "isRtl":Z
    :cond_7
    move v3, v4

    .line 315
    goto :goto_1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v3, 0x1

    .line 325
    .line 326
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v0, v3

    .line 330
    .local v0, "isRtl":Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v4, :cond_2

    .line 331
    if-eqz v0, :cond_1

    .line 332
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 333
    .local v2, "min":I
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 351
    .local v1, "max":I
    :goto_1
    invoke-static {v2, p2, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    move-result v3

    return v3

    .line 326
    .end local v0    # "isRtl":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    .restart local v0    # "isRtl":Z
    :cond_1
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 336
    .restart local v2    # "min":I
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1

    .line 338
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v4, v3, :cond_4

    .line 339
    if-eqz v0, :cond_3

    .line 340
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 341
    .restart local v2    # "min":I
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1

    .line 343
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_3
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 344
    .restart local v2    # "min":I
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .restart local v1    # "max":I
    goto :goto_1

    .line 347
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_4
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 348
    .restart local v2    # "min":I
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 356
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activePointerId"    # I

    .prologue
    .line 247
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 361
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float v3, v3

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 363
    .local v2, "startAlphaDistance":F
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float v3, v3

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 366
    .local v1, "endAlphaDistance":F
    int-to-float v3, p2

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_0

    .line 367
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_0
    int-to-float v3, p2

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_1

    .line 369
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 372
    :cond_1
    int-to-float v3, p2

    invoke-static {v2, v1, v3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->fraction(FFF)F

    move-result v0

    .line 373
    .local v0, "distance":F
    sub-float v3, v6, v0

    invoke-static {v7, v3, v6}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 268
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 272
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .line 274
    .local v1, "dismiss":Z
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int v2, v3, v0

    .line 279
    .local v2, "targetLeft":I
    :goto_0
    const/4 v1, 0x1

    .line 285
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    new-instance v3, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {v3, v4, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 290
    :cond_0
    :goto_2
    return-void

    .line 276
    .end local v2    # "targetLeft":I
    :cond_1
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    add-int v2, v3, v0

    goto :goto_0

    .line 282
    :cond_2
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .restart local v2    # "targetLeft":I
    goto :goto_1

    .line 287
    :cond_3
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v3, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 241
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 242
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
