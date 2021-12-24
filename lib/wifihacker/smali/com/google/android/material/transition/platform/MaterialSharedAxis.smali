.class public final Lcom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lcom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/MaterialVisibility",
        "<",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THEMED_DURATION_ATTR:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final DEFAULT_THEMED_EASING_ATTR:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    .line 92
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "axis"    # I
    .param p2, "forward"    # Z

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 96
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    .line 97
    iput-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    .line 98
    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 3
    .param p0, "axis"    # I
    .param p1, "forward"    # Z

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    new-instance v1, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_0

    const v0, 0x800005

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    move-object v0, v1

    .line 117
    :goto_1
    return-object v0

    .line 113
    :cond_0
    const v0, 0x800003

    goto :goto_0

    .line 115
    :pswitch_1
    new-instance v1, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_1

    const/16 v0, 0x50

    :goto_2
    invoke-direct {v1, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    .line 117
    :pswitch_2
    new-instance v0, Lcom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    goto :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/material/transition/platform/FadeThroughProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public getAxis()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    return v0
.end method

.method getDurationThemeAttrResId(Z)I
    .locals 1
    .param p1, "appearing"    # Z
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .prologue
    .line 130
    sget v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    return v0
.end method

.method getEasingThemeAttrResId(Z)I
    .locals 1
    .param p1, "appearing"    # Z
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .prologue
    .line 136
    sget v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 1
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
