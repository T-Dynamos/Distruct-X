.class final Lcom/google/android/material/transition/platform/FadeModeEvaluators$3;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/FadeModeResult;
    .locals 4
    .param p1, "progress"    # F
    .param p2, "fadeStartFraction"    # F
    .param p3, "fadeEndFraction"    # F
    .param p4, "threshold"    # F

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 61
    invoke-static {v3, v2, p2, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    move-result v1

    .line 62
    .local v1, "startAlpha":I
    invoke-static {v2, v3, p2, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    move-result v0

    .line 63
    .local v0, "endAlpha":I
    invoke-static {v1, v0}, Lcom/google/android/material/transition/platform/FadeModeResult;->startOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;

    move-result-object v2

    return-object v2
.end method
