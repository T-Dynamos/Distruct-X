.class Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ProgressBar;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 49
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 141
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 140
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 73
    move-object/from16 v0, p1

    instance-of v12, v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v12, :cond_2

    move-object/from16 v12, p1

    .line 74
    check-cast v12, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v12}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 75
    .local v7, "inner":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 76
    move/from16 v0, p2

    invoke-direct {p0, v7, v0}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v12, p1

    .line 77
    check-cast v12, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v12, v7}, Landroidx/core/graphics/drawable/WrappedDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v7    # "inner":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v8, p1

    .line 113
    :cond_1
    :goto_0
    return-object v8

    .line 79
    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_6

    move-object/from16 v2, p1

    .line 80
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 81
    .local v2, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 82
    .local v1, "N":I
    new-array v9, v1, [Landroid/graphics/drawable/Drawable;

    .line 84
    .local v9, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 85
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 86
    .local v6, "id":I
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const v12, 0x102000d

    if-eq v6, v12, :cond_3

    const v12, 0x102000f

    if-ne v6, v12, :cond_4

    :cond_3
    const/4 v12, 0x1

    :goto_2
    invoke-direct {p0, v13, v12}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v9, v5

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 86
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 89
    .end local v6    # "id":I
    :cond_5
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 91
    .local v8, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_1

    .line 92
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v12

    invoke-virtual {v8, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 97
    .end local v1    # "N":I
    .end local v2    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v9    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_0

    move-object/from16 v3, p1

    .line 98
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 100
    .local v11, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v12, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v12, :cond_7

    .line 101
    iput-object v11, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    .line 104
    :cond_7
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 105
    .local v10, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v11, v12, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 107
    .local v4, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    if-eqz p2, :cond_8

    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct {v12, v10, v13, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v10, v12

    .end local v10    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v10

    goto/16 :goto_0
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 122
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 123
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 125
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 126
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 129
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 134
    move-object p1, v4

    .line 136
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method


# virtual methods
.method getSampleTile()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    invoke-static {v2, p1, v3, p2, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1, v4}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 66
    return-void
.end method
