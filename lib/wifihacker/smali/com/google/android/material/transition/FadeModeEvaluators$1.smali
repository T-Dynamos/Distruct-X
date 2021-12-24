.class final Lcom/google/android/material/transition/FadeModeEvaluators$1;
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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/FadeModeResult;
    .locals 4
    .param p1, "progress"    # F
    .param p2, "fadeStartFraction"    # F
    .param p3, "fadeEndFraction"    # F
    .param p4, "threshold"    # F

    .prologue
    .line 34
    const/16 v1, 0xff

    .line 35
    .local v1, "startAlpha":I
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v2, v3, p2, p3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(IIFFF)I

    move-result v0

    .line 36
    .local v0, "endAlpha":I
    invoke-static {v1, v0}, Lcom/google/android/material/transition/FadeModeResult;->endOnTop(II)Lcom/google/android/material/transition/FadeModeResult;

    move-result-object v2

    return-object v2
.end method
