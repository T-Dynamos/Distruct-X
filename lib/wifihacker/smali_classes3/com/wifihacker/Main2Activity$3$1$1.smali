.class Lcom/wifihacker/Main2Activity$3$1$1;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/Main2Activity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wifihacker/Main2Activity$3$1;


# direct methods
.method constructor <init>(Lcom/wifihacker/Main2Activity$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/Main2Activity$3$1$1;->this$2:Lcom/wifihacker/Main2Activity$3$1;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3$1$1;->this$2:Lcom/wifihacker/Main2Activity$3$1;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity$3$1;->access$0(Lcom/wifihacker/Main2Activity$3$1;)Lcom/wifihacker/Main2Activity$3;

    move-result-object v0

    invoke-static {v0}, Lcom/wifihacker/Main2Activity$3;->access$0(Lcom/wifihacker/Main2Activity$3;)Lcom/wifihacker/Main2Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wifihacker/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Wait Till Scanning"

    invoke-static {v0, v1}, Lcom/wifihacker/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method
