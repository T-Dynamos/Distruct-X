.class Lcom/wifihacker/PassActivity$1;
.super Ljava/lang/Object;
.source "PassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/PassActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifihacker/PassActivity;


# direct methods
.method constructor <init>(Lcom/wifihacker/PassActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$0(Lcom/wifihacker/PassActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oktest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$1(Lcom/wifihacker/PassActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-virtual {v1}, Lcom/wifihacker/PassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wifihacker/Main2Activity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    iget-object v1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v1}, Lcom/wifihacker/PassActivity;->access$1(Lcom/wifihacker/PassActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifihacker/PassActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$2(Lcom/wifihacker/PassActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
