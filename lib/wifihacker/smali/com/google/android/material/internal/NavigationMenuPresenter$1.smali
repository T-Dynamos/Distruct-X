.class Lcom/google/android/material/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/internal/NavigationMenuPresenter;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 413
    move-object v2, p1

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 414
    .local v2, "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 415
    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    .line 416
    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v4, v1, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v3

    .line 417
    .local v3, "result":Z
    const/4 v0, 0x0

    .line 418
    .local v0, "checkStateChanged":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 419
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 423
    if-eqz v0, :cond_1

    .line 424
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 426
    :cond_1
    return-void
.end method
