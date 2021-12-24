.class public Lcom/google/android/material/internal/DescendantOffsetUtils;
.super Ljava/lang/Object;
.source "DescendantOffsetUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final matrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "descendant"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "out"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 85
    return-void
.end method

.method private static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p0, "target"    # Landroid/view/ViewParent;
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "m"    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 91
    check-cast v1, Landroid/view/View;

    .line 92
    .local v1, "vp":Landroid/view/View;
    invoke-static {p0, v1, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 96
    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 101
    :cond_1
    return-void
.end method

.method public static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "descendant"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 50
    sget-object v2, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 51
    .local v0, "m":Landroid/graphics/Matrix;
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    .end local v0    # "m":Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    .restart local v0    # "m":Landroid/graphics/Matrix;
    sget-object v2, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 60
    sget-object v2, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 61
    .local v1, "rectF":Landroid/graphics/RectF;
    if-nez v1, :cond_0

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rectF":Landroid/graphics/RectF;
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 63
    .restart local v1    # "rectF":Landroid/graphics/RectF;
    sget-object v2, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :cond_0
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 67
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    return-void

    .line 55
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method
