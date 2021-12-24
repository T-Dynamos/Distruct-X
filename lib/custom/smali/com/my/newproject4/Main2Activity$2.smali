.class Lcom/my/newproject4/Main2Activity$2;
.super Ljava/util/TimerTask;
.source "Main2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/newproject4/Main2Activity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/newproject4/Main2Activity;


# direct methods
.method constructor <init>(Lcom/my/newproject4/Main2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/my/newproject4/Main2Activity$2;->this$0:Lcom/my/newproject4/Main2Activity;

    .line 81
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/my/newproject4/Main2Activity$2;)Lcom/my/newproject4/Main2Activity;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity$2;->this$0:Lcom/my/newproject4/Main2Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity$2;->this$0:Lcom/my/newproject4/Main2Activity;

    new-instance v1, Lcom/my/newproject4/Main2Activity$2$1;

    invoke-direct {v1, p0}, Lcom/my/newproject4/Main2Activity$2$1;-><init>(Lcom/my/newproject4/Main2Activity$2;)V

    invoke-virtual {v0, v1}, Lcom/my/newproject4/Main2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method
