.class public abstract Landroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 65
    iput p3, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 66
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 139
    return-void
.end method

.method public abstract bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    instance-of v1, p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 184
    check-cast v0, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 188
    .local v0, "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V

    .line 189
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 79
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/MenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 83
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .prologue
    .line 70
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 73
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .prologue
    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p1, :cond_0

    .end local p1    # "menu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :goto_0
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v0

    .line 224
    :goto_1
    return v0

    .line 222
    .restart local p1    # "menu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .prologue
    .line 154
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 155
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 248
    iput p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    .line 249
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 91
    iget-object v7, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 92
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 125
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    .line 95
    .local v0, "childIndex":I
    iget-object v9, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 96
    iget-object v9, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 97
    iget-object v9, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 98
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 99
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 100
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 101
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    .line 104
    check-cast v9, Landroidx/appcompat/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    .line 105
    .local v6, "oldItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 106
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 108
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 111
    :cond_2
    if-eq v5, v1, :cond_3

    .line 112
    invoke-virtual {p0, v5, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 114
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 99
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 120
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 121
    invoke-virtual {p0, v7, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
