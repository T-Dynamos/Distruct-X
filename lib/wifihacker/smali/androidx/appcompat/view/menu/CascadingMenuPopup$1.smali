.class Landroidx/appcompat/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .prologue
    .line 98
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v3, 0x0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 107
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 116
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    return-void

    .line 111
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 112
    .local v1, "info":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    goto :goto_0
.end method
