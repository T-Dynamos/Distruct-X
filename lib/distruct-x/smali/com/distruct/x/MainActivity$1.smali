.class Lcom/distruct/x/MainActivity$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distruct/x/MainActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distruct/x/MainActivity;


# direct methods
.method constructor <init>(Lcom/distruct/x/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/distruct/x/MainActivity$1;->this$0:Lcom/distruct/x/MainActivity;

    .line 71
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/distruct/x/MainActivity$1;)Lcom/distruct/x/MainActivity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/distruct/x/MainActivity$1;->this$0:Lcom/distruct/x/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/distruct/x/MainActivity$1;->this$0:Lcom/distruct/x/MainActivity;

    new-instance v1, Lcom/distruct/x/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/distruct/x/MainActivity$1$1;-><init>(Lcom/distruct/x/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/distruct/x/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
