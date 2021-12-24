.class Lcom/google/android/material/navigation/NavigationBarView$2;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/navigation/NavigationBarView;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$2;->this$0:Lcom/google/android/material/navigation/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "initialPadding"    # Lcom/google/android/material/internal/ViewUtils$RelativePadding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 262
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 264
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 265
    .local v0, "isRtl":Z
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 266
    .local v1, "systemWindowInsetLeft":I
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 267
    .local v2, "systemWindowInsetRight":I
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_1

    move v3, v2

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 268
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_2

    .end local v1    # "systemWindowInsetLeft":I
    :goto_2
    add-int/2addr v3, v1

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 269
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 270
    return-object p2

    .line 264
    .end local v0    # "isRtl":Z
    .end local v2    # "systemWindowInsetRight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isRtl":Z
    .restart local v1    # "systemWindowInsetLeft":I
    .restart local v2    # "systemWindowInsetRight":I
    :cond_1
    move v3, v1

    .line 267
    goto :goto_1

    :cond_2
    move v1, v2

    .line 268
    goto :goto_2
.end method
