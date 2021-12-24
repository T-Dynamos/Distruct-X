.class Lcom/whatsapp/bomber/Main2Activity$1$1;
.super Ljava/util/TimerTask;
.source "Main2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whatsapp/bomber/Main2Activity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/whatsapp/bomber/Main2Activity$1;


# direct methods
.method constructor <init>(Lcom/whatsapp/bomber/Main2Activity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/whatsapp/bomber/Main2Activity$1$1;->this$1:Lcom/whatsapp/bomber/Main2Activity$1;

    .line 77
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/whatsapp/bomber/Main2Activity$1$1;)Lcom/whatsapp/bomber/Main2Activity$1;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity$1$1;->this$1:Lcom/whatsapp/bomber/Main2Activity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity$1$1;->this$1:Lcom/whatsapp/bomber/Main2Activity$1;

    invoke-static {v0}, Lcom/whatsapp/bomber/Main2Activity$1;->access$0(Lcom/whatsapp/bomber/Main2Activity$1;)Lcom/whatsapp/bomber/Main2Activity;

    move-result-object v0

    new-instance v1, Lcom/whatsapp/bomber/Main2Activity$1$1$1;

    invoke-direct {v1, p0}, Lcom/whatsapp/bomber/Main2Activity$1$1$1;-><init>(Lcom/whatsapp/bomber/Main2Activity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/whatsapp/bomber/Main2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
