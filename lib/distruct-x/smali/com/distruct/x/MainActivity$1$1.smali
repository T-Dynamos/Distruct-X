.class Lcom/distruct/x/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distruct/x/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distruct/x/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/distruct/x/MainActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/distruct/x/MainActivity$1$1;->this$1:Lcom/distruct/x/MainActivity$1;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/distruct/x/MainActivity$1$1;->this$1:Lcom/distruct/x/MainActivity$1;

    invoke-static {v0}, Lcom/distruct/x/MainActivity$1;->access$0(Lcom/distruct/x/MainActivity$1;)Lcom/distruct/x/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/distruct/x/MainActivity;->access$0(Lcom/distruct/x/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/distruct/x/MainActivity$1$1;->this$1:Lcom/distruct/x/MainActivity$1;

    invoke-static {v1}, Lcom/distruct/x/MainActivity$1;->access$0(Lcom/distruct/x/MainActivity$1;)Lcom/distruct/x/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distruct/x/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/distruct/x/StartActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/distruct/x/MainActivity$1$1;->this$1:Lcom/distruct/x/MainActivity$1;

    invoke-static {v0}, Lcom/distruct/x/MainActivity$1;->access$0(Lcom/distruct/x/MainActivity$1;)Lcom/distruct/x/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/distruct/x/MainActivity$1$1;->this$1:Lcom/distruct/x/MainActivity$1;

    invoke-static {v1}, Lcom/distruct/x/MainActivity$1;->access$0(Lcom/distruct/x/MainActivity$1;)Lcom/distruct/x/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/distruct/x/MainActivity;->access$0(Lcom/distruct/x/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/distruct/x/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
