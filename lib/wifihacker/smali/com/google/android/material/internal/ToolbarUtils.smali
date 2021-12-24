.class public Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "menuItemId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 115
    .local v1, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v1, :cond_1

    .line 116
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 117
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "child":Landroid/view/View;
    instance-of v4, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 119
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 120
    .local v0, "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 126
    .end local v0    # "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :goto_1
    return-object v0

    .line 116
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 86
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 89
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 83
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 6
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 95
    .local v3, "navigationIcon":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    move-object v2, v4

    .line 107
    :cond_0
    :goto_0
    return-object v2

    .line 98
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/ImageButton;

    if-eqz v5, :cond_2

    move-object v2, v0

    .line 101
    check-cast v2, Landroid/widget/ImageButton;

    .line 102
    .local v2, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eq v5, v3, :cond_0

    .line 98
    .end local v2    # "imageButton":Landroid/widget/ImageButton;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v2, v4

    .line 107
    goto :goto_0
.end method

.method public static getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 72
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private static getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 4
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 60
    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 57
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
