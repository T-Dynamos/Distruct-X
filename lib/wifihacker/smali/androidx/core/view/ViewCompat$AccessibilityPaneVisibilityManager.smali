.class Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityPaneVisibilityManager"
.end annotation


# instance fields
.field private mPanesToVisible:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4472
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkPaneVisibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "oldVisibility"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4514
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4515
    .local v1, "newVisibility":Z
    :goto_0
    if-eq p2, v1, :cond_0

    .line 4516
    if-eqz v1, :cond_2

    .line 4517
    const/16 v0, 0x10

    .line 4519
    .local v0, "contentChangeType":I
    :goto_1
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 4520
    iget-object v2, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4522
    .end local v0    # "contentChangeType":I
    :cond_0
    return-void

    .line 4514
    .end local v1    # "newVisibility":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4518
    .restart local v1    # "newVisibility":Z
    :cond_2
    const/16 v0, 0x20

    goto :goto_1
.end method

.method private registerForLayoutCallback(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4526
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4527
    return-void
.end method

.method private unregisterForLayoutCallback(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4531
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4532
    return-void
.end method


# virtual methods
.method addAccessibilityPane(Landroid/view/View;)V
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4498
    iget-object v1, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4500
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4501
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Landroid/view/View;)V

    .line 4503
    :cond_0
    return-void

    .line 4498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4477
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 4478
    iget-object v1, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4479
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->checkPaneVisibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 4482
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4488
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Landroid/view/View;)V

    .line 4489
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4494
    return-void
.end method

.method removeAccessibilityPane(Landroid/view/View;)V
    .locals 1
    .param p1, "pane"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 4507
    iget-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4508
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4509
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->unregisterForLayoutCallback(Landroid/view/View;)V

    .line 4510
    return-void
.end method
