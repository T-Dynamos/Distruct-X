.class Lcom/google/android/material/transition/platform/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 80
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;
    .locals 3
    .param p0, "fitMode"    # I
    .param p1, "entering"    # Z
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 129
    packed-switch p0, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fit mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 135
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    goto :goto_0

    .line 133
    :pswitch_1
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    goto :goto_0

    .line 135
    :pswitch_2
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 9
    .param p0, "entering"    # Z
    .param p1, "startBounds"    # Landroid/graphics/RectF;
    .param p2, "endBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 144
    .local v5, "startWidth":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 145
    .local v3, "startHeight":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 146
    .local v2, "endWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 148
    .local v0, "endHeight":F
    mul-float v8, v0, v5

    div-float v1, v8, v2

    .line 149
    .local v1, "endHeightFitToWidth":F
    mul-float v8, v3, v2

    div-float v4, v8, v5

    .line 150
    .local v4, "startHeightFitToWidth":F
    if-eqz p0, :cond_2

    cmpl-float v8, v1, v3

    if-ltz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    cmpl-float v8, v4, v0

    if-gez v8, :cond_0

    move v6, v7

    goto :goto_0
.end method
