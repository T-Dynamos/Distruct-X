.class public Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;
.super Ljava/lang/Object;
.source "MaterialContainerTransformSharedElementCallback.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeableViewShapeProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideShape(Landroid/view/View;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p1, "sharedElement"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    instance-of v0, p1, Lcom/google/android/material/shape/Shapeable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/shape/Shapeable;

    .line 77
    .end local p1    # "sharedElement":Landroid/view/View;
    invoke-interface {p1}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 77
    .restart local p1    # "sharedElement":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
