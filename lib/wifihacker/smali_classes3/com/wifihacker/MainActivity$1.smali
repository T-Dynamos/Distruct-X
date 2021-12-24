.class Lcom/wifihacker/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifihacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/wifihacker/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    invoke-static {v0}, Lcom/wifihacker/MainActivity;->access$0(Lcom/wifihacker/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    invoke-virtual {v1}, Lcom/wifihacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wifihacker/PassActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    iget-object v1, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    invoke-virtual {v1}, Lcom/wifihacker/MainActivity;->getApplicationContext()Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/wifihacker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "clipboard"

    const-string v2, "You Are been Hacked"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 68
    iget-object v0, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    iget-object v1, p0, Lcom/wifihacker/MainActivity$1;->this$0:Lcom/wifihacker/MainActivity;

    invoke-static {v1}, Lcom/wifihacker/MainActivity;->access$0(Lcom/wifihacker/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifihacker/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
