.class public Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;,
        Lcom/google/android/material/snackbar/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
        "<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BUTTON_STYLE_ATTR:[I

.field private static final SNACKBAR_CONTENT_STYLE_ATTRS:[I


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
            "<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/R$attr;->snackbarButtonStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/R$attr;->snackbarButtonStyle:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/R$attr;->snackbarTextViewStyle:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "content"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "contentViewCallback"    # Lcom/google/android/material/snackbar/ContentViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    .line 113
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 114
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "fallback":Landroid/view/ViewGroup;
    :goto_0
    instance-of v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_0

    .line 271
    check-cast p0, Landroid/view/ViewGroup;

    .line 291
    .end local p0    # "view":Landroid/view/View;
    :goto_1
    return-object p0

    .line 272
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-ne v3, v4, :cond_1

    .line 276
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 279
    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 283
    .end local v0    # "fallback":Landroid/view/ViewGroup;
    .local v1, "fallback":Landroid/view/ViewGroup;
    :goto_2
    if-eqz p0, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 286
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    move-object p0, v2

    .line 288
    :cond_2
    :goto_3
    if-nez p0, :cond_4

    move-object v0, v1

    .end local v1    # "fallback":Landroid/view/ViewGroup;
    .restart local v0    # "fallback":Landroid/view/ViewGroup;
    move-object p0, v1

    .line 291
    goto :goto_1

    .line 286
    .end local v0    # "fallback":Landroid/view/ViewGroup;
    .restart local v1    # "fallback":Landroid/view/ViewGroup;
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object v0, v1

    .end local v1    # "fallback":Landroid/view/ViewGroup;
    .restart local v0    # "fallback":Landroid/view/ViewGroup;
    goto :goto_0

    :cond_5
    move-object v1, v0

    .end local v0    # "fallback":Landroid/view/ViewGroup;
    .restart local v1    # "fallback":Landroid/view/ViewGroup;
    goto :goto_2
.end method

.method protected static hasSnackbarButtonStyleAttr(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 230
    sget-object v3, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 232
    .local v1, "snackbarButtonStyleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    if-eq v1, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static hasSnackbarContentStyleAttrs(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 237
    sget-object v5, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 239
    .local v1, "snackbarButtonStyleResId":I
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 240
    .local v2, "snackbarTextViewStyleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    if-eq v1, v6, :cond_0

    if-eq v2, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lcom/google/android/material/snackbar/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 197
    .local v2, "parent":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 198
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_0
    if-nez p0, :cond_1

    .line 203
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 206
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 210
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/google/android/material/snackbar/Snackbar;->hasSnackbarContentStyleAttrs(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar_include:I

    :goto_0
    const/4 v5, 0x0

    .line 209
    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 215
    .local v0, "content":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    new-instance v3, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v3, p0, v2, v0, v0}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    .line 216
    .local v3, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v3, p2}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 217
    invoke-virtual {v3, p3}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 218
    return-object v3

    .line 210
    .end local v0    # "content":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    .end local v3    # "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    :cond_2
    sget v4, Lcom/google/android/material/R$layout;->design_layout_snackbar_include:I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dismiss()V

    .line 128
    return-void
.end method

.method public getDuration()I
    .locals 5

    .prologue
    const/4 v2, -0x2

    .line 363
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v1

    .line 364
    .local v1, "userSetDuration":I
    if-ne v1, v2, :cond_0

    .line 375
    .end local v1    # "userSetDuration":I
    :goto_0
    return v2

    .line 368
    .restart local v1    # "userSetDuration":I
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 369
    iget-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    .line 370
    .local v0, "controlsFlag":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v3, v0, 0x1

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    goto :goto_0

    .line 369
    .end local v0    # "controlsFlag":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 375
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .end local v1    # "userSetDuration":I
    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 338
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 339
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 340
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iput-boolean v3, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 357
    :goto_0
    return-object p0

    .line 344
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 345
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    new-instance v2, Lcom/google/android/material/snackbar/Snackbar$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/snackbar/Snackbar$1;-><init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 433
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 434
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 435
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 410
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 411
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 412
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 413
    return-object p0
.end method

.method public setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 442
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTintList(Landroid/content/res/ColorStateList;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 449
    return-object p0
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 455
    return-object p0
.end method

.method public setCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "callback"    # Lcom/google/android/material/snackbar/Snackbar$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->removeCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 477
    :cond_0
    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 482
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    .line 483
    return-object p0
.end method

.method public setMaxInlineActionWidth(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 3
    .param p1, "width"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 423
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 424
    return-object p0
.end method

.method public setText(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 301
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 302
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 303
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-object p0
.end method

.method public setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 398
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 399
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 400
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    return-object p0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 386
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 387
    .local v0, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 388
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 389
    return-object p0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 121
    return-void
.end method
