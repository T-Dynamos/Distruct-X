.class Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/navigation/NavigationView;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 681
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v7}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 682
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v6}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v6

    aget v6, v6, v4

    if-nez v6, :cond_1

    move v2, v4

    .line 683
    .local v2, "isBehindStatusBar":Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v6}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 684
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v6, v2}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 686
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 687
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 688
    const v6, 0x1020002

    .line 689
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 691
    .local v3, "isBehindSystemNav":Z
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 693
    .local v1, "hasNonZeroAlpha":Z
    :goto_2
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v6, v4}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 695
    .end local v1    # "hasNonZeroAlpha":Z
    .end local v3    # "isBehindSystemNav":Z
    :cond_0
    return-void

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "isBehindStatusBar":Z
    :cond_1
    move v2, v5

    .line 682
    goto :goto_0

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "isBehindStatusBar":Z
    :cond_2
    move v3, v5

    .line 689
    goto :goto_1

    .restart local v3    # "isBehindSystemNav":Z
    :cond_3
    move v1, v5

    .line 691
    goto :goto_2

    .restart local v1    # "hasNonZeroAlpha":Z
    :cond_4
    move v4, v5

    .line 693
    goto :goto_3
.end method
