.class public Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
.super Ljava/lang/Object;
.source "AnimatorDurationScaleProvider.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static defaultSystemAnimatorDurationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultSystemAnimatorDurationScale(F)V
    .locals 0
    .param p0, "scale"    # F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    sput p0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    .line 61
    return-void
.end method


# virtual methods
.method public getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 43
    const-string v0, "animator_duration_scale"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 45
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 46
    const-string v0, "animator_duration_scale"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 48
    :cond_1
    sget v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    goto :goto_0
.end method
