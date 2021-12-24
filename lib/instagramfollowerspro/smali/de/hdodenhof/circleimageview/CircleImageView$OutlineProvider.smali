.class Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method private constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;->this$0:Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;Lde/hdodenhof/circleimageview/CircleImageView$1;)V
    .locals 5

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;->this$0:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v4}, Lde/hdodenhof/circleimageview/CircleImageView;->access$100(Lde/hdodenhof/circleimageview/CircleImageView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    sget-object v4, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 451
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v4

    .line 448
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;->this$0:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v4}, Lde/hdodenhof/circleimageview/CircleImageView;->access$200(Lde/hdodenhof/circleimageview/CircleImageView;)Landroid/graphics/RectF;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 449
    move-object v4, v2

    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0
.end method
