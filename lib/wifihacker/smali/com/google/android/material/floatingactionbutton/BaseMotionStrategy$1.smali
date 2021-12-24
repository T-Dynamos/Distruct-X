.class Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;
.super Landroid/util/Property;
.source "BaseMotionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 156
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;
    .locals 5
    .param p1, "object"    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .prologue
    .line 161
    iget-object v2, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    .line 164
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getDrawableState()[I

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-static {v4}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->access$000(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 163
    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 162
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 165
    .local v1, "originalOpacity":I
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v0, v2, v3

    .line 166
    .local v0, "currentOpacity":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v1

    div-float v4, v0, v4

    invoke-static {v2, v3, v4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V
    .locals 8
    .param p1, "object"    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    .line 173
    iget-object v4, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    .line 175
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-static {v6}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->access$000(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 174
    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 177
    .local v3, "originalColor":I
    const/4 v4, 0x0

    .line 178
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    .line 179
    .local v2, "interpolatedValue":F
    mul-float v4, v2, v7

    float-to-int v4, v4

    .line 182
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 183
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 184
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 180
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 185
    .local v0, "alphaColor":I
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 195
    .local v1, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 196
    iget-object v4, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v4}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V

    return-void
.end method
