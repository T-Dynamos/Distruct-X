.class Lcom/google/android/material/slider/BaseSlider$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/slider/BaseSlider;

    .prologue
    .line 1959
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider$3;, "Lcom/google/android/material/slider/BaseSlider$3;"
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$3;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1962
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider$3;, "Lcom/google/android/material/slider/BaseSlider$3;"
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1963
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$3;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v1}, Lcom/google/android/material/slider/BaseSlider;->access$100(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1964
    .local v0, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$3;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v2}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1966
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    return-void
.end method
