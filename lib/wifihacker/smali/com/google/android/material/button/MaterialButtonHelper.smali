.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private checkable:Z

.field private cornerRadius:I

.field private cornerRadiusSet:Z

.field private elevation:I

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final materialButton:Lcom/google/android/material/button/MaterialButton;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private shouldDrawSurfaceColorStroke:Z

.field private strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 78
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 79
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 80
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 204
    .local v0, "backgroundDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 206
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 210
    :cond_0
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 212
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 214
    .local v2, "surfaceColorStrokeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 215
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v5, v3

    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    sget v6, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 218
    invoke-static {v3, v6}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    .line 215
    :goto_0
    invoke-virtual {v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 221
    sget-boolean v3, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v3, :cond_2

    .line 222
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, -0x1

    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 226
    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v4

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-direct {p0, v6}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v5, v4, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 231
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 239
    :goto_1
    return-object v3

    :cond_1
    move v3, v4

    .line 218
    goto :goto_0

    .line 233
    :cond_2
    new-instance v3, Lcom/google/android/material/ripple/RippleDrawableCompat;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v5}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 235
    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 234
    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 236
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v4

    aput-object v0, v5, v8

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v5, v7

    invoke-direct {v3, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 239
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 5
    .param p1, "getSurfaceColorStrokeDrawable"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    if-lez v4, :cond_3

    .line 329
    sget-boolean v4, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 331
    .local v0, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 332
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    if-eqz p1, :cond_0

    .line 333
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 340
    .end local v0    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    return-object v2

    .restart local v0    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .restart local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    move v2, v3

    .line 332
    goto :goto_0

    .line 335
    .end local v0    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    .line 336
    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 335
    goto :goto_2

    .line 340
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method private setVerticalInsets(II)V
    .locals 9
    .param p1, "newInsetTop"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2, "newInsetBottom"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 411
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    .line 412
    .local v4, "paddingStart":I
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v5

    .line 413
    .local v5, "paddingTop":I
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 414
    .local v3, "paddingEnd":I
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v2

    .line 415
    .local v2, "paddingBottom":I
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 416
    .local v1, "oldInsetTop":I
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 417
    .local v0, "oldInsetBottom":I
    iput p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 418
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 419
    iget-boolean v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    if-nez v6, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    .line 423
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    add-int v7, v5, p1

    sub-int/2addr v7, v1

    add-int v8, v2, p2

    sub-int/2addr v8, v0

    invoke-static {v6, v4, v7, v3, v8}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 429
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 139
    .local v0, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_0

    .line 140
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 142
    :cond_0
    return-void
.end method

.method private updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 371
    :cond_2
    return-void
.end method

.method private updateStroke()V
    .locals 5

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 298
    .local v0, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    .line 299
    .local v1, "surfaceColorStrokeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_0

    .line 300
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 301
    if-eqz v1, :cond_0

    .line 302
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v3, v2

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 305
    invoke-static {v2, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 302
    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 309
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method


# virtual methods
.method getCornerRadius()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    return v0
.end method

.method public getInsetBottom()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    return v0
.end method

.method public getMaskDrawable()Lcom/google/android/material/shape/Shapeable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 375
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    .line 384
    :goto_0
    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getStrokeWidth()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    return v0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    return v0
.end method

.method isCheckable()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    return v0
.end method

.method loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 83
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 84
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    .line 85
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 86
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 87
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    .line 88
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 91
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 93
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 94
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 97
    :cond_0
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 99
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    .line 101
    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-static {v4, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 102
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 104
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    .line 103
    invoke-static {v4, p1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 105
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 107
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    .line 106
    invoke-static {v4, p1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 108
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 110
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    .line 109
    invoke-static {v4, p1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 112
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 113
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_elevation:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    .line 116
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    .line 117
    .local v2, "paddingStart":I
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v3

    .line 118
    .local v3, "paddingTop":I
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 119
    .local v1, "paddingEnd":I
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v0

    .line 122
    .local v0, "paddingBottom":I
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_background:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 128
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v8, v0

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 134
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    goto :goto_0
.end method

.method setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 253
    :cond_0
    return-void
.end method

.method setBackgroundOverwritten()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method

.method setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 350
    return-void
.end method

.method setCornerRadius(I)V
    .locals 2
    .param p1, "cornerRadius"    # I

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    if-eq v0, p1, :cond_1

    .line 315
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 318
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 320
    :cond_1
    return-void
.end method

.method public setInsetBottom(I)V
    .locals 1
    .param p1, "newInsetBottom"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 398
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 399
    return-void
.end method

.method public setInsetTop(I)V
    .locals 1
    .param p1, "newInsetTop"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 406
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 407
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 257
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 258
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 260
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    .line 263
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 389
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 390
    return-void
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 0
    .param p1, "shouldDrawSurfaceColorStroke"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 195
    return-void
.end method

.method setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "strokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 276
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 278
    :cond_0
    return-void
.end method

.method setStrokeWidth(I)V
    .locals 1
    .param p1, "strokeWidth"    # I

    .prologue
    .line 286
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 288
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 290
    :cond_0
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 173
    :cond_0
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 186
    :cond_0
    return-void
.end method

.method updateMaskBounds(II)V
    .locals 5
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    sub-int v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    :cond_0
    return-void
.end method
