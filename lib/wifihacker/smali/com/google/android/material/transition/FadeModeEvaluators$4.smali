.class final Lcom/google/android/material/transition/FadeModeEvaluators$4;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/FadeModeResult;
    .locals 7
    .param p1, "progress"    # F
    .param p2, "fadeStartFraction"    # F
    .param p3, "fadeEndFraction"    # F
    .param p4, "threshold"    # F

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 67
    sub-float v1, p3, p2

    .line 68
    .local v1, "fadeFractionDiff":F
    mul-float v4, v1, p4

    add-float v2, p2, v4

    .line 70
    .local v2, "fadeFractionThreshold":F
    invoke-static {v6, v5, p2, v2, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(IIFFF)I

    move-result v3

    .line 71
    .local v3, "startAlpha":I
    invoke-static {v5, v6, v2, p3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(IIFFF)I

    move-result v0

    .line 72
    .local v0, "endAlpha":I
    invoke-static {v3, v0}, Lcom/google/android/material/transition/FadeModeResult;->startOnTop(II)Lcom/google/android/material/transition/FadeModeResult;

    move-result-object v4

    return-object v4
.end method
