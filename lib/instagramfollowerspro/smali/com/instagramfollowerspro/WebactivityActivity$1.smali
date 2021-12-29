.class Lcom/instagramfollowerspro/WebactivityActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebactivityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instagramfollowerspro/WebactivityActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagramfollowerspro/WebactivityActivity;


# direct methods
.method constructor <init>(Lcom/instagramfollowerspro/WebactivityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/instagramfollowerspro/WebactivityActivity$1;->this$0:Lcom/instagramfollowerspro/WebactivityActivity;

    .line 49
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method
