.class Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ShareActionProvider;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 362
    iget-object v4, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v5, v5, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    .line 364
    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 365
    .local v2, "itemId":I
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v3

    .line 366
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 369
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    :cond_0
    iget-object v4, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 372
    :cond_1
    iget-object v4, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method
