.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field runningAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/internal/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 42
    iput-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 102
    :cond_0
    return-void
.end method

.method private start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V
    .locals 1
    .param p1, "match"    # Lcom/google/android/material/internal/StateListAnimator$Tuple;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p1, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 63
    .local v0, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 114
    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "match":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v4, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    iget-object v4, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 73
    .local v3, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v4, v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    move-object v2, v3

    .line 78
    .end local v3    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-ne v2, v4, :cond_3

    .line 90
    :cond_1
    :goto_1
    return-void

    .line 71
    .restart local v3    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_3
    iget-object v4, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-eqz v4, :cond_4

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/internal/StateListAnimator;->cancel()V

    .line 85
    :cond_4
    iput-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 87
    if-eqz v2, :cond_1

    .line 88
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/StateListAnimator;->start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V

    goto :goto_1
.end method
