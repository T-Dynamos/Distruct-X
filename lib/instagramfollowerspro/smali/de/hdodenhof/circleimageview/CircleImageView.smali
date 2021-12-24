.class public Lde/hdodenhof/circleimageview/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_CIRCLE_BACKGROUND_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mCircleBackgroundColor:I

.field private final mCircleBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lde/hdodenhof/circleimageview/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 61
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 63
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 64
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 65
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 66
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    .line 68
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    .line 90
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 61
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 63
    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 64
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 65
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 66
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    .line 68
    move-object v5, v0

    const/high16 v6, -0x1000000

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    .line 69
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    .line 100
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 102
    move-object v5, v0

    move-object v6, v4

    sget v7, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_width:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    .line 103
    move-object v5, v0

    move-object v6, v4

    sget v7, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_color:I

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    .line 104
    move-object v5, v0

    move-object v6, v4

    sget v7, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_border_overlay:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderOverlay:Z

    .line 105
    move-object v5, v0

    move-object v6, v4

    sget v7, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView_civ_circle_background_color:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    .line 107
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    move-object v5, v0

    invoke-direct {v5}, Lde/hdodenhof/circleimageview/CircleImageView;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$100(Lde/hdodenhof/circleimageview/CircleImageView;)Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lde/hdodenhof/circleimageview/CircleImageView;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    move-object v0, v1

    return-object v0
.end method

.method private applyColorFilter()V
    .locals 3

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 299
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 301
    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 14

    .prologue
    .line 389
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    move v1, v6

    .line 390
    move-object v6, v0

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move v2, v6

    .line 392
    move v6, v1

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v6

    .line 394
    move-object v6, v0

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    move v7, v1

    move v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move v4, v6

    .line 395
    move-object v6, v0

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    move v7, v2

    move v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move v5, v6

    .line 397
    new-instance v6, Landroid/graphics/RectF;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move v8, v4

    move v9, v5

    move v10, v4

    move v11, v3

    int-to-float v11, v11

    add-float/2addr v10, v11

    move v11, v5

    move v12, v3

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v6

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 305
    const/4 v4, 0x0

    move-object v0, v4

    .line 327
    :goto_0
    return-object v0

    .line 308
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 309
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 315
    :cond_1
    move-object v4, v1

    :try_start_0
    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 316
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lde/hdodenhof/circleimageview/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 321
    :goto_1
    new-instance v4, Landroid/graphics/Canvas;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    .line 322
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 318
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lde/hdodenhof/circleimageview/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 325
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 326
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private inTouchableArea(FF)Z
    .locals 9

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    const/4 v3, 0x1

    move v0, v3

    .line 436
    :goto_0
    return v0

    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRadius:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lde/hdodenhof/circleimageview/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mReady:Z

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 117
    move-object v1, v0

    new-instance v2, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;Lde/hdodenhof/circleimageview/CircleImageView$1;)V

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 120
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mSetupPending:Z

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    invoke-direct {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 122
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mSetupPending:Z

    .line 124
    :cond_1
    return-void
.end method

.method private initializeBitmap()V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v1, :cond_0

    .line 333
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 337
    :goto_0
    move-object v1, v0

    invoke-direct {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 338
    return-void

    .line 335
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lde/hdodenhof/circleimageview/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setup()V
    .locals 8

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mReady:Z

    if-nez v1, :cond_0

    .line 342
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mSetupPending:Z

    .line 386
    :goto_0
    return-void

    .line 346
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 347
    goto :goto_0

    .line 350
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 351
    move-object v1, v0

    invoke-virtual {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->invalidate()V

    .line 352
    goto :goto_0

    .line 355
    :cond_2
    move-object v1, v0

    new-instance v2, Landroid/graphics/BitmapShader;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 357
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 359
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 360
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v1

    .line 362
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 363
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapHeight:I

    .line 372
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapWidth:I

    .line 374
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 375
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRadius:F

    .line 377
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 378
    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderOverlay:Z

    if-nez v1, :cond_3

    move-object v1, v0

    iget v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    if-lez v1, :cond_3

    .line 379
    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 381
    :cond_3
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRadius:F

    .line 383
    move-object v1, v0

    invoke-direct {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->applyColorFilter()V

    .line 384
    move-object v1, v0

    invoke-direct {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->updateShaderMatrix()V

    .line 385
    move-object v1, v0

    invoke-virtual {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->invalidate()V

    .line 386
    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 8

    .prologue
    .line 402
    move-object v0, p0

    const/4 v4, 0x0

    move v2, v4

    .line 403
    const/4 v4, 0x0

    move v3, v4

    .line 405
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 407
    move-object v4, v0

    iget v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 408
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v1, v4

    .line 409
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapWidth:I

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move v2, v4

    .line 415
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move v5, v1

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 416
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    move v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v4

    .line 418
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    move-object v5, v0

    iget-object v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 419
    return-void

    .line 411
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v1, v4

    .line 412
    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    move v0, v1

    return v0
.end method

.method public getBorderWidth()I
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    move v0, v1

    return v0
.end method

.method public getCircleBackgroundColor()I
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v0, v1

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    sget-object v1, Lde/hdodenhof/circleimageview/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    move-object v0, v1

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderOverlay:Z

    move v0, v1

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    move v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 153
    goto :goto_0

    .line 156
    :cond_1
    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    if-eqz v2, :cond_2

    .line 157
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRadius:F

    move-object v6, v0

    iget-object v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mDrawableRadius:F

    move-object v6, v0

    iget-object v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    move-object v2, v0

    iget v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    if-lez v2, :cond_3

    .line 161
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderRadius:F

    move-object v6, v0

    iget-object v6, v6, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    :cond_3
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 168
    move-object v5, v0

    invoke-direct {v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 169
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v2, :cond_0

    .line 425
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .line 428
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->inTouchableArea(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAdjustViewBounds(Z)V
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "adjustViewBounds not supported."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    if-ne v2, v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    move-object v2, v0

    invoke-virtual {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->invalidate()V

    .line 195
    goto :goto_0
.end method

.method public setBorderOverlay(Z)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderOverlay:Z

    if-ne v2, v3, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderOverlay:Z

    .line 238
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 239
    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    if-ne v2, v3, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mBorderWidth:I

    .line 225
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 226
    goto :goto_0
.end method

.method public setCircleBackgroundColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    if-ne v2, v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundColor:I

    .line 207
    move-object v2, v0

    iget-object v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    move-object v2, v0

    invoke-virtual {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->invalidate()V

    .line 209
    goto :goto_0
.end method

.method public setCircleBackgroundColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setCircleBackgroundColor(I)V

    .line 213
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lde/hdodenhof/circleimageview/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne v2, v3, :cond_0

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 285
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->applyColorFilter()V

    .line 286
    move-object v2, v0

    invoke-virtual {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->invalidate()V

    .line 287
    goto :goto_0
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lde/hdodenhof/circleimageview/CircleImageView;->mDisableCircularTransformation:Z

    .line 251
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->initializeBitmap()V

    .line 252
    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->initializeBitmap()V

    .line 258
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->initializeBitmap()V

    .line 264
    return-void
.end method

.method public setImageResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->initializeBitmap()V

    .line 270
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 275
    move-object v2, v0

    invoke-direct {v2}, Lde/hdodenhof/circleimageview/CircleImageView;->initializeBitmap()V

    .line 276
    return-void
.end method

.method public setPadding(IIII)V
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 174
    move-object v5, v0

    invoke-direct {v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 175
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 10

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 180
    move-object v5, v0

    invoke-direct {v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setup()V

    .line 181
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 10

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Lde/hdodenhof/circleimageview/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v3, :cond_0

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "ScaleType %s not supported."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    return-void
.end method
