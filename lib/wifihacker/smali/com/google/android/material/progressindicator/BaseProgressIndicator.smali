.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.super Landroid/widget/ProgressBar;
.source "BaseProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$HideAnimationBehavior;,
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$ShowAnimationBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field static final DEFAULT_OPACITY:F = 0.2f

.field static final DEF_STYLE_RES:I

.field public static final HIDE_INWARD:I = 0x2

.field public static final HIDE_NONE:I = 0x0

.field public static final HIDE_OUTWARD:I = 0x1

.field static final MAX_ALPHA:I = 0xff

.field static final MAX_HIDE_DELAY:I = 0x3e8

.field public static final SHOW_INWARD:I = 0x2

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OUTWARD:I = 0x1


# instance fields
.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field private final delayedHide:Ljava/lang/Runnable;

.field private final delayedShow:Ljava/lang/Runnable;

.field private final hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private isIndeterminateModeChangeRequested:Z

.field private isParentDoneInitializing:Z

.field private lastShowStartTime:J

.field private final minHideDelay:I

.field private final showDelay:I

.field spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private storedProgress:I

.field private storedProgressAnimated:Z

.field private final switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private visibilityAfterHide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 137
    sget v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    .line 125
    iput-boolean v3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    .line 779
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    .line 792
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    .line 807
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 825
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 146
    sget-object v2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v5, v3, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 147
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 149
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showDelay:I

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    .line 150
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_minHideDelay:I

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 151
    .local v7, "minHideDelayUncapped":I
    const/16 v0, 0x3e8

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    .line 152
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    new-instance v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalHide()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/progressindicator/BaseProgressIndicator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    return v0
.end method

.method private getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method private internalHide()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 252
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isNoLongerNeedToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    .line 255
    :cond_0
    return-void
.end method

.method private internalShow()V
    .locals 2

    .prologue
    .line 213
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    if-lez v0, :cond_0

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    .line 218
    return-void
.end method

.method private isNoLongerNeedToBeVisible()Z
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    .line 485
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerAnimationCallbacks()V
    .locals 2

    .prologue
    .line 163
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 179
    :cond_2
    return-void
.end method

.method private unregisterAnimationCallbacks()V
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->unregisterAnimatorsCompleteCallback()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyNewVisibility(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 276
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    goto :goto_0
.end method

.method abstract createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    .prologue
    .line 647
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    return v0
.end method

.method public getTrackThickness()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    return v0
.end method

.method public hide()V
    .locals 8

    .prologue
    .line 225
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    sub-long v2, v4, v6

    .line 233
    .local v2, "timeElapsedSinceShowStart":J
    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 234
    .local v0, "enoughTimeElapsed":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 235
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 233
    .end local v0    # "enoughTimeElapsed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 238
    .restart local v0    # "enoughTimeElapsed":Z
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    iget v4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 348
    :cond_0
    return-void
.end method

.method isEffectivelyVisible()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 463
    move-object v0, p0

    .line 465
    .local v0, "current":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 473
    :cond_0
    :goto_1
    return v2

    .line 468
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 469
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    .line 472
    :cond_2
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 475
    check-cast v0, Landroid/view/View;

    .line 476
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 287
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->registerAnimationCallbacks()V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    .line 292
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 300
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->unregisterAnimationCallbacks()V

    .line 301
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 302
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 308
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 309
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 314
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 315
    .local v0, "h":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 319
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 308
    .end local v1    # "saveCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 326
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 327
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 328
    .local v2, "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    if-nez v2, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v1

    .line 332
    .local v1, "drawableMeasuredWidth":I
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v0

    .line 333
    .local v0, "drawableMeasuredHeight":I
    if-gez v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMeasuredWidth()I

    move-result v3

    move v4, v3

    .line 336
    :goto_1
    if-gez v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMeasuredHeight()I

    move-result v3

    .line 333
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v0    # "drawableMeasuredHeight":I
    .end local v1    # "drawableMeasuredWidth":I
    .end local v2    # "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 336
    .restart local v0    # "drawableMeasuredHeight":I
    .restart local v1    # "drawableMeasuredWidth":I
    .restart local v2    # "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v3

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 259
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 260
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 265
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    .line 267
    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V
    .locals 1
    .param p1, "animatorDurationScaleProvider"    # Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 764
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 770
    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1
    .param p1, "hideAnimationBehavior"    # I

    .prologue
    .line 684
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 685
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 686
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 5
    .param p1, "indeterminate"    # Z

    .prologue
    .line 498
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne p1, v2, :cond_0

    .line 524
    :goto_0
    monitor-exit p0

    return-void

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 504
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot switch to indeterminate mode while the progress indicator is visible."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 511
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 512
    .local v1, "oldDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 515
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 518
    .local v0, "newDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 523
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-nez p1, :cond_0

    .line 405
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    :goto_0
    return-void

    .line 408
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 409
    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 410
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setIndicatorColor([I)V
    .locals 4
    .param p1, "indicatorColors"    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 574
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 576
    const/4 v0, 0x1

    new-array p1, v0, [I

    .end local p1    # "indicatorColors":[I
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$attr;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    aput v1, p1, v0

    .line 578
    .restart local p1    # "indicatorColors":[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput-object p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 580
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->invalidateSpecValues()V

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 583
    :cond_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 699
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    :goto_0
    monitor-exit p0

    return-void

    .line 702
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressCompat(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 716
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    .line 721
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    .line 724
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 726
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->requestCancelAnimatorAfterCurrentCycle()V

    goto :goto_0

    .line 736
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 738
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-nez p1, :cond_0

    .line 380
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :goto_0
    return-void

    .line 383
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 384
    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 385
    .local v0, "determinateDrawable":Lcom/google/android/material/progressindicator/DeterminateDrawable;, "Lcom/google/android/material/progressindicator/DeterminateDrawable<TS;>;"
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->hideNow()Z

    .line 386
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setLevelByFraction(F)V

    goto :goto_0

    .line 392
    .end local v0    # "determinateDrawable":Lcom/google/android/material/progressindicator/DeterminateDrawable;, "Lcom/google/android/material/progressindicator/DeterminateDrawable<TS;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set framework drawable as progress drawable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1
    .param p1, "showAnimationBehavior"    # I

    .prologue
    .line 659
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 660
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 661
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1
    .param p1, "trackColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 606
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    if-eq v0, p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 608
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 610
    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2
    .param p1, "trackCornerRadius"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 633
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    if-eq v0, p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 636
    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 1
    .param p1, "trackThickness"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 547
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    if-eq v0, p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 549
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->requestLayout()V

    .line 551
    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 750
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    .line 756
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 198
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method visibleToUser()Z
    .locals 1

    .prologue
    .line 434
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isEffectivelyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
