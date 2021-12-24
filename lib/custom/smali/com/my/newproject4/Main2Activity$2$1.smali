.class Lcom/my/newproject4/Main2Activity$2$1;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/newproject4/Main2Activity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/my/newproject4/Main2Activity$2;


# direct methods
.method constructor <init>(Lcom/my/newproject4/Main2Activity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/my/newproject4/Main2Activity$2$1;->this$1:Lcom/my/newproject4/Main2Activity$2;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity$2$1;->this$1:Lcom/my/newproject4/Main2Activity$2;

    invoke-static {v0}, Lcom/my/newproject4/Main2Activity$2;->access$0(Lcom/my/newproject4/Main2Activity$2;)Lcom/my/newproject4/Main2Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/newproject4/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Wait Till Scanning"

    invoke-static {v0, v1}, Lcom/my/newproject4/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method
