.class public Lcom/termuxhackers/id/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# instance fields
.field private final BOOT_ACTION:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v2, v0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    iput-object v3, v2, Lcom/termuxhackers/id/BootReceiver;->BOOT_ACTION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/termuxhackers/id/BootReceiver;->mContext:Landroid/content/Context;

    .line 11
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 12
    move-object v8, v4

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 18
    new-instance v8, Landroid/content/Intent;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    :try_start_0
    const-string v11, "com.termuxhackers.id.MyService"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v5, v8

    .line 19
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    :cond_0
    return-void

    .line 18
    :catch_0
    move-exception v8

    move-object v6, v8

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8
.end method
