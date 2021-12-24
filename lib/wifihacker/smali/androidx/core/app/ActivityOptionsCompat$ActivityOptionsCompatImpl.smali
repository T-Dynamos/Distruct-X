.class Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Landroidx/core/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 256
    invoke-direct {p0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    .line 257
    iput-object p1, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 258
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 287
    .end local p0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    iget-object v1, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 288
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object p0, v0

    .line 287
    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroidx/core/app/ActivityOptionsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    instance-of v1, p1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 268
    check-cast v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 270
    .local v0, "otherImpl":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    iget-object v1, p0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v2, v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 272
    .end local v0    # "otherImpl":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    return-void
.end method
