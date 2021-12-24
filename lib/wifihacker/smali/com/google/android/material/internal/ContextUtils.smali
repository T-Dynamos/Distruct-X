.class public Lcom/google/android/material/internal/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 42
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Landroid/app/Activity;

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    return-object p0

    .line 45
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method
