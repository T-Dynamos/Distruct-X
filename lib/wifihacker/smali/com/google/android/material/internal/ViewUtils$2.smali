.class final Lcom/google/android/material/internal/ViewUtils$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

.field final synthetic val$paddingBottomSystemWindowInsets:Z

.field final synthetic val$paddingLeftSystemWindowInsets:Z

.field final synthetic val$paddingRightSystemWindowInsets:Z


# direct methods
.method constructor <init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingBottomSystemWindowInsets:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingLeftSystemWindowInsets:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingRightSystemWindowInsets:Z

    iput-object p4, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
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
    .line 185
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingBottomSystemWindowInsets:Z

    if-eqz v1, :cond_0

    .line 186
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 189
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingLeftSystemWindowInsets:Z

    if-eqz v1, :cond_1

    .line 190
    if-eqz v0, :cond_4

    .line 191
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 196
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingRightSystemWindowInsets:Z

    if-eqz v1, :cond_2

    .line 197
    if-eqz v0, :cond_5

    .line 198
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 203
    :cond_2
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 205
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 204
    .end local p2    # "insets":Landroidx/core/view/WindowInsetsCompat;
    :cond_3
    return-object p2

    .line 193
    .restart local p2    # "insets":Landroidx/core/view/WindowInsetsCompat;
    :cond_4
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_0

    .line 200
    :cond_5
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_1
.end method
