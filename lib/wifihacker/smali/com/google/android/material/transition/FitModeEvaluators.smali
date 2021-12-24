.class Lcom/google/android/material/transition/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 75
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;
    .locals 3
    .param p0, "fitMode"    # I
    .param p1, "entering"    # Z
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 132
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

    .line 126
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    .line 124
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

    .line 138
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 139
    .local v5, "startWidth":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 140
    .local v3, "startHeight":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 141
    .local v2, "endWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 143
    .local v0, "endHeight":F
    mul-float v8, v0, v5

    div-float v1, v8, v2

    .line 144
    .local v1, "endHeightFitToWidth":F
    mul-float v8, v3, v2

    div-float v4, v8, v5

    .line 145
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
