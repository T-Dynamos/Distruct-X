.class Lcom/wifihacker/RequestNetworkController$2;
.super Ljava/lang/Object;
.source "RequestNetworkController.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/RequestNetworkController;->getClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifihacker/RequestNetworkController;


# direct methods
.method constructor <init>(Lcom/wifihacker/RequestNetworkController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/RequestNetworkController$2;->this$0:Lcom/wifihacker/RequestNetworkController;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method
