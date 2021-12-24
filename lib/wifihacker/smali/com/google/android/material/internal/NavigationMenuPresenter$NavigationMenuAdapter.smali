.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 1

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 445
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 624
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 626
    .local v1, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_0
    return-void
.end method

.method private prepareMenuItems()V
    .locals 19

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    if-eqz v15, :cond_0

    .line 621
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 560
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const/4 v2, -0x1

    .line 563
    .local v2, "currentGroupId":I
    const/4 v3, 0x0

    .line 564
    .local v3, "currentGroupStart":I
    const/4 v1, 0x0

    .line 565
    .local v1, "currentGroupHasIcon":Z
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v15, v15, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "totalSize":I
    :goto_1
    if-ge v5, v14, :cond_e

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v15, v15, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 567
    .local v6, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 570
    :cond_1
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 571
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 573
    :cond_2
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 574
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 575
    .local v9, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 576
    if-eqz v5, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const/4 v10, 0x0

    .line 581
    .local v10, "subMenuHasIcon":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 582
    .local v12, "subMenuStart":I
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v8

    .local v8, "size":I
    :goto_2
    if-ge v7, v8, :cond_8

    .line 583
    invoke-interface {v9, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 584
    .local v11, "subMenuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 585
    if-nez v10, :cond_4

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 586
    const/4 v10, 0x1

    .line 588
    :cond_4
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 589
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 591
    :cond_5
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 592
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 594
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 597
    .end local v11    # "subMenuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_8
    if-eqz v10, :cond_9

    .line 598
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 565
    .end local v7    # "j":I
    .end local v8    # "size":I
    .end local v9    # "subMenu":Landroid/view/SubMenu;
    .end local v10    # "subMenuHasIcon":Z
    .end local v12    # "subMenuStart":I
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 602
    :cond_a
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    .line 603
    .local v4, "groupId":I
    if-eq v4, v2, :cond_d

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 605
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_c

    const/4 v1, 0x1

    .line 606
    :goto_4
    if-eqz v5, :cond_b

    .line 607
    add-int/lit8 v3, v3, 0x1

    .line 608
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_b
    :goto_5
    new-instance v13, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v13, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 615
    .local v13, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    iput-boolean v1, v13, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    move v2, v4

    goto :goto_3

    .line 605
    .end local v13    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 610
    :cond_d
    if-nez v1, :cond_b

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 611
    const/4 v1, 0x1

    .line 612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_5

    .line 620
    .end local v4    # "groupId":I
    .end local v6    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 647
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v7, "state":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v8, :cond_0

    .line 649
    const-string v8, "android:menu:checked"

    iget-object v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 653
    .local v1, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v8, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 654
    iget-object v8, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 655
    .local v5, "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v8, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_1

    .line 656
    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v5    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    .line 657
    .local v4, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, "actionView":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_1

    .line 659
    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v2}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 660
    .local v2, "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    invoke-virtual {v0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 661
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    .end local v0    # "actionView":Landroid/view/View;
    .end local v2    # "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    .end local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    .restart local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 665
    .end local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_3
    const-string v8, "android:menu:action_views"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 666
    return-object v7
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 449
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 459
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 460
    .local v0, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v2, :cond_0

    .line 461
    const/4 v2, 0x2

    .line 469
    :goto_0
    return v2

    .line 462
    :cond_0
    instance-of v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v2, :cond_1

    .line 463
    const/4 v2, 0x3

    goto :goto_0

    .line 464
    :cond_1
    instance-of v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 465
    check-cast v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 466
    .local v1, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    const/4 v2, 0x1

    goto :goto_0

    .line 469
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 472
    .end local v1    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown item type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getRowCount()I
    .locals 3

    .prologue
    .line 718
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 719
    .local v1, "itemCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 720
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 721
    add-int/lit8 v1, v1, 0x1

    .line 719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 718
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 724
    .restart local v0    # "i":I
    .restart local v1    # "itemCount":I
    :cond_2
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 493
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 496
    :pswitch_0
    iget-object v1, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 497
    .local v1, "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 498
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 501
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 506
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 504
    :goto_1
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 508
    .local v0, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    iget-boolean v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 509
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 510
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 511
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    if-eqz v3, :cond_2

    .line 512
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 514
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-static {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->access$000(Lcom/google/android/material/internal/NavigationMenuPresenter;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 515
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    goto :goto_0

    .line 506
    .end local v0    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 520
    .end local v1    # "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    :pswitch_1
    iget-object v2, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 521
    .local v2, "subHeader":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 522
    .restart local v0    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 527
    .end local v0    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    .end local v2    # "subHeader":Landroid/widget/TextView;
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 528
    .local v0, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    iget-object v3, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 478
    packed-switch p2, :pswitch_data_0

    .line 488
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 480
    :pswitch_0
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 482
    :pswitch_1
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 484
    :pswitch_2
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 486
    :pswitch_3
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    .prologue
    .line 540
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    .line 543
    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    .line 670
    const-string v9, "android:menu:checked"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 671
    .local v2, "checkedItem":I
    if-eqz v2, :cond_1

    .line 672
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 673
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 674
    iget-object v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 675
    .local v5, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v9, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v9, :cond_3

    .line 676
    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v5    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    .line 677
    .local v6, "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    if-ne v9, v2, :cond_3

    .line 678
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 683
    .end local v6    # "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    iput-boolean v10, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 684
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 687
    .end local v4    # "i":I
    .end local v8    # "size":I
    :cond_1
    const-string v9, "android:menu:action_views"

    .line 688
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 689
    .local v1, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    if-eqz v1, :cond_5

    .line 690
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8    # "size":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 691
    iget-object v9, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 692
    .local v7, "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v9, v7, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v9, :cond_4

    .line 690
    .end local v7    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 673
    .end local v1    # "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 695
    .restart local v1    # "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    .restart local v7    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_4
    check-cast v7, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v7    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v7}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    .line 696
    .local v5, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v5, :cond_2

    .line 699
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 704
    .local v3, "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    if-eqz v3, :cond_2

    .line 707
    invoke-virtual {v0, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_2

    .line 710
    .end local v0    # "actionView":Landroid/view/View;
    .end local v3    # "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    .end local v4    # "i":I
    .end local v5    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v8    # "size":I
    :cond_5
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 2
    .param p1, "checkedItem"    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 637
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 714
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 548
    return-void
.end method
