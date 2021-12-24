.class Lcom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .prologue
    .line 415
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$2;"
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arguments"    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$2;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 418
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v5, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 420
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 421
    .local v1, "isRtl":Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v5, v3, :cond_4

    if-nez v1, :cond_4

    :cond_1
    move v0, v3

    .line 424
    .local v0, "dismissToLeft":Z
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v2, v4

    .line 425
    .local v2, "offset":I
    :goto_2
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 426
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 427
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v4, :cond_2

    .line 428
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v4, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 432
    .end local v0    # "dismissToLeft":Z
    .end local v1    # "isRtl":Z
    .end local v2    # "offset":I
    :cond_2
    :goto_3
    return v3

    :cond_3
    move v1, v4

    .line 420
    goto :goto_0

    .restart local v1    # "isRtl":Z
    :cond_4
    move v0, v4

    .line 421
    goto :goto_1

    .line 424
    .restart local v0    # "dismissToLeft":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    .end local v0    # "dismissToLeft":Z
    .end local v1    # "isRtl":Z
    :cond_6
    move v3, v4

    .line 432
    goto :goto_3
.end method
