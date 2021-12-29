.class Lcom/instagramfollowerspro/MainActivity$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instagramfollowerspro/MainActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagramfollowerspro/MainActivity;


# direct methods
.method constructor <init>(Lcom/instagramfollowerspro/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/instagramfollowerspro/MainActivity$1;->this$0:Lcom/instagramfollowerspro/MainActivity;

    .line 85
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/instagramfollowerspro/MainActivity$1;)Lcom/instagramfollowerspro/MainActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagramfollowerspro/MainActivity$1;->this$0:Lcom/instagramfollowerspro/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagramfollowerspro/MainActivity$1;->this$0:Lcom/instagramfollowerspro/MainActivity;

    new-instance v1, Lcom/instagramfollowerspro/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/instagramfollowerspro/MainActivity$1$1;-><init>(Lcom/instagramfollowerspro/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/instagramfollowerspro/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
