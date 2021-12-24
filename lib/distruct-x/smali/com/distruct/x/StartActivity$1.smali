.class Lcom/distruct/x/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distruct/x/StartActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distruct/x/StartActivity;


# direct methods
.method constructor <init>(Lcom/distruct/x/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 67
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr71.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr72.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr73.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr74.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr75.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v0}, Lcom/distruct/x/StartActivity;->access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://xlr76.herokuapp.com/bomb/"

    iget-object v2, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-static {v2}, Lcom/distruct/x/StartActivity;->access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/distruct/x/StartActivity$1;->this$0:Lcom/distruct/x/StartActivity;

    invoke-virtual {v0}, Lcom/distruct/x/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bombing has been started"

    invoke-static {v0, v1}, Lcom/distruct/x/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    return-void
.end method
