.class Lcom/wifihacker/Main2Activity$3$1;
.super Ljava/util/TimerTask;
.source "Main2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/Main2Activity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wifihacker/Main2Activity$3;


# direct methods
.method constructor <init>(Lcom/wifihacker/Main2Activity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/Main2Activity$3$1;->this$1:Lcom/wifihacker/Main2Activity$3;

    .line 112
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wifihacker/Main2Activity$3$1;)Lcom/wifihacker/Main2Activity$3;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3$1;->this$1:Lcom/wifihacker/Main2Activity$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wifihacker/Main2Activity$3$1;->this$1:Lcom/wifihacker/Main2Activity$3;

    invoke-static {v0}, Lcom/wifihacker/Main2Activity$3;->access$0(Lcom/wifihacker/Main2Activity$3;)Lcom/wifihacker/Main2Activity;

    move-result-object v0

    new-instance v1, Lcom/wifihacker/Main2Activity$3$1$1;

    invoke-direct {v1, p0}, Lcom/wifihacker/Main2Activity$3$1$1;-><init>(Lcom/wifihacker/Main2Activity$3$1;)V

    invoke-virtual {v0, v1}, Lcom/wifihacker/Main2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
