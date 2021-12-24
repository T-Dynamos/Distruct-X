.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;,
        Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider",
        "<TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/slider/BaseOnChangeListener",
        "<TS;>;T::",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener",
        "<TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final LABEL_ANIMATION_ENTER_DURATION:J = 0x53L

.field private static final LABEL_ANIMATION_EXIT_DURATION:J = 0x75L

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field static final UNIT_PX:I = 0x0

.field static final UNIT_VALUE:I = 0x1

.field private static final WARNING_FLOATING_POINT_ERRROR:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."


# instance fields
.field private accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider",
            "<TS;T",
            "L;",
            "TT;>.AccessibilityEventSender;"
        }
    .end annotation
.end field

.field private final accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final activeTrackPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final changeListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private defaultThumbRadius:I

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lcom/google/android/material/slider/LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final haloPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private haloRadius:I

.field private final inactiveTicksPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final inactiveTrackPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isLongPress:Z

.field private labelBehavior:I

.field private final labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private labelPadding:I

.field private final labels:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private labelsAreAnimatedIn:Z

.field private labelsInAnimator:Landroid/animation/ValueAnimator;

.field private labelsOutAnimator:Landroid/animation/ValueAnimator;

.field private lastEvent:Landroid/view/MotionEvent;

.field private minTrackSidePadding:I

.field private final scaledTouchSlop:I

.field private separationUnit:I

.field private stepSize:F

.field private final thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private thumbRadius:I

.field private tickColorActive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private tickColorInactive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private tickVisible:Z

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private trackColorInactive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackTop:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 218
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 320
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 325
    sget v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 245
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 265
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 272
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 274
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 277
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 280
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 289
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 292
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 334
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 337
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 338
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 342
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 345
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 349
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->loadResources(Landroid/content/res/Resources;)V

    .line 356
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    invoke-virtual {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->setFocusable(Z)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->setClickable(Z)V

    .line 375
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 377
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 379
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 380
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 384
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .prologue
    .line 190
    invoke-static {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # F

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/slider/BaseSlider;I)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    return v0
.end method

.method private attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 1
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;

    .prologue
    .line 1430
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    .line 1431
    return-void
.end method

.method private calculateIncrementForKey(I)Ljava/lang/Float;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 2265
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    .line 2266
    .local v0, "increment":F
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 2278
    const/4 v1, 0x0

    .end local v0    # "increment":F
    :goto_1
    return-object v1

    .line 2265
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    goto :goto_0

    .line 2268
    .restart local v0    # "increment":F
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "increment":F
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .restart local v0    # "increment":F
    :cond_1
    neg-float v0, v0

    goto :goto_2

    .line 2270
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v0, v0

    .end local v0    # "increment":F
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 2272
    .restart local v0    # "increment":F
    :sswitch_2
    neg-float v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 2276
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 2266
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method private calculateStepIncrement()F
    .locals 2

    .prologue
    .line 2284
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    goto :goto_0
.end method

.method private calculateStepIncrement(I)F
    .locals 4
    .param p1, "stepFactor"    # I

    .prologue
    .line 2292
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 2293
    .local v0, "increment":F
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v2, v3

    div-float v1, v2, v0

    .line 2294
    .local v1, "numSteps":F
    int-to-float v2, p1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 2298
    .end local v0    # "increment":F
    :goto_0
    return v0

    .restart local v0    # "increment":F
    :cond_0
    int-to-float v2, p1

    div-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method private calculateTop()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    .line 1514
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 1515
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1514
    return v0
.end method

.method private createLabelAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "enter"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1924
    if-eqz p1, :cond_0

    move v2, v4

    .line 1926
    .local v2, "startFraction":F
    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 1927
    :goto_1
    invoke-static {v3, v2}, Lcom/google/android/material/slider/BaseSlider;->getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F

    move-result v2

    .line 1929
    if-eqz p1, :cond_2

    .line 1930
    .local v1, "endFraction":F
    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1931
    .local v0, "animator":Landroid/animation/ValueAnimator;
    if-eqz p1, :cond_3

    const-wide/16 v4, 0x53

    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1932
    if-eqz p1, :cond_4

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1936
    new-instance v3, Lcom/google/android/material/slider/BaseSlider$2;

    invoke-direct {v3, p0}, Lcom/google/android/material/slider/BaseSlider$2;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1948
    return-object v0

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endFraction":F
    .end local v2    # "startFraction":F
    :cond_0
    move v2, v1

    .line 1924
    goto :goto_0

    .line 1926
    .restart local v2    # "startFraction":F
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    move v1, v4

    .line 1929
    goto :goto_2

    .line 1931
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v1    # "endFraction":F
    :cond_3
    const-wide/16 v4, 0x75

    goto :goto_3

    .line 1932
    :cond_4
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_4
.end method

.method private createLabelPool()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v1, 0x1

    .line 719
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 720
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 721
    .local v3, "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 722
    .local v0, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 723
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    goto :goto_0

    .line 726
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 730
    .end local v3    # "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 731
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    invoke-interface {v4}, Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;->createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v2

    .line 732
    .local v2, "tooltipDrawable":Lcom/google/android/material/tooltip/TooltipDrawable;
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 734
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    goto :goto_1

    .line 739
    .end local v2    # "tooltipDrawable":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_3
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v1, 0x0

    .line 740
    .local v1, "strokeWidth":I
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 741
    .restart local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    int-to-float v5, v1

    invoke-virtual {v0, v5}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeWidth(F)V

    goto :goto_2

    .line 743
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_5
    return-void
.end method

.method private detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 2
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;

    .prologue
    .line 1448
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    .line 1449
    .local v0, "contentViewOverlay":Lcom/google/android/material/internal/ViewOverlayImpl;
    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1451
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    .line 1453
    :cond_0
    return-void
.end method

.method private dimenToValue(F)F
    .locals 3
    .param p1, "dimen"    # F

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    .line 1870
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1873
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private dispatchOnChangedFromUser(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 2074
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2075
    .local v0, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    goto :goto_0

    .line 2077
    .end local v0    # "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2078
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->scheduleAccessibilityEventSender(I)V

    .line 2080
    :cond_1
    return-void
.end method

.method private dispatchOnChangedProgramatically()V
    .locals 6

    .prologue
    .line 2065
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2066
    .local v0, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 2067
    .local v1, "value":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, p0, v4, v5}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    goto :goto_0

    .line 2070
    .end local v0    # "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    .end local v1    # "value":Ljava/lang/Float;
    :cond_1
    return-void
.end method

.method private drawActiveTrack(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .prologue
    .line 1591
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v6

    .line 1592
    .local v6, "activeRange":[F
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v2, v6, v2

    int-to-float v4, p2

    mul-float/2addr v2, v4

    add-float v3, v0, v2

    .line 1593
    .local v3, "right":F
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-float v4, p2

    mul-float/2addr v2, v4

    add-float v1, v0, v2

    .line 1594
    .local v1, "left":F
    int-to-float v2, p3

    int-to-float v4, p3

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1595
    return-void
.end method

.method private drawInactiveTrack(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .prologue
    .line 1565
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v8

    .line 1566
    .local v8, "activeRange":[F
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v2, v8, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 1567
    .local v1, "right":F
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 1568
    int-to-float v2, p3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    add-int/2addr v0, p2

    int-to-float v3, v0

    int-to-float v4, p3

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1572
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    const/4 v2, 0x0

    aget v2, v8, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v5, v0, v2

    .line 1573
    .local v5, "left":F
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    .line 1574
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v3, v0

    int-to-float v4, p3

    int-to-float v6, p3

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1576
    :cond_1
    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .prologue
    .line 1627
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1629
    .local v0, "value":Ljava/lang/Float;
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    .line 1630
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 1629
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1634
    .end local v0    # "value":Ljava/lang/Float;
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1635
    .restart local v0    # "value":Ljava/lang/Float;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1636
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 1637
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    .line 1636
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1639
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 1642
    .end local v0    # "value":Ljava/lang/Float;
    :cond_1
    return-void
.end method

.method private ensureLabelsAdded()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 1973
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    if-ne v2, v4, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 1981
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    if-nez v2, :cond_1

    .line 1982
    iput-boolean v7, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1983
    invoke-direct {p0, v7}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 1984
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 1985
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1988
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1990
    .local v1, "labelItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1991
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    if-ne v0, v2, :cond_2

    .line 1990
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1996
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    goto :goto_2

    .line 1999
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2000
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not enough labels(%d) to display all the values(%d)"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 2002
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 2001
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2006
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    goto/16 :goto_0
.end method

.method private ensureLabelsRemoved()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v1, 0x0

    .line 1954
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    if-eqz v0, :cond_0

    .line 1955
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1956
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 1958
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/slider/BaseSlider$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$3;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1968
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1970
    :cond_0
    return-void
.end method

.method private focusThumbOnFocusGained(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    .line 2316
    sparse-switch p1, :sswitch_data_0

    .line 2334
    :goto_0
    return-void

    .line 2318
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    goto :goto_0

    .line 2321
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    goto :goto_0

    .line 2324
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    goto :goto_0

    .line 2327
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    goto :goto_0

    .line 2316
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private formatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 2010
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    .line 2014
    :goto_0
    return-object v0

    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const-string v0, "%.0f"

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    goto :goto_1
.end method

.method private getActiveRange()[F
    .locals 8

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1556
    .local v1, "max":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1557
    .local v2, "min":F
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .end local v2    # "min":F
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v0

    .line 1558
    .local v0, "left":F
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    .line 1561
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v7, [F

    aput v3, v4, v6

    aput v0, v4, v5

    :goto_0
    return-object v4

    :cond_1
    new-array v4, v7, [F

    aput v0, v4, v6

    aput v3, v4, v5

    goto :goto_0
.end method

.method private static getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F
    .locals 2
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "defaultValue"    # F

    .prologue
    .line 1906
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1907
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1908
    .local v0, "value":F
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1912
    .end local v0    # "value":F
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getClampedValue(IF)F
    .locals 5
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v1, 0x0

    .line 1858
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v1

    .line 1859
    .local v1, "minSeparation":F
    :cond_0
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->dimenToValue(F)F

    move-result v1

    .line 1860
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1861
    neg-float v1, v1

    .line 1864
    :cond_2
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 1865
    .local v2, "upperBound":F
    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-gez v3, :cond_4

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 1866
    .local v0, "lowerBound":F
    :goto_1
    invoke-static {p2, v0, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    return v3

    .line 1864
    .end local v0    # "lowerBound":F
    .end local v2    # "upperBound":F
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v2, v3, v1

    goto :goto_0

    .line 1865
    .restart local v2    # "upperBound":F
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float v0, v3, v1

    goto :goto_1
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 2118
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getValueOfTouchPosition()F
    .locals 6

    .prologue
    .line 1885
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->snapPosition(F)D

    move-result-wide v0

    .line 1888
    .local v0, "position":D
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1889
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 1891
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private getValueOfTouchPositionAbsolute()F
    .locals 3

    .prologue
    .line 1820
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1821
    .local v0, "position":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1824
    :cond_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    add-float/2addr v1, v2

    return v1
.end method

.method private invalidateTrack()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 2037
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2039
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2040
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2041
    return-void
.end method

.method private isInVerticalScrollingContainer()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2052
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v2, v1

    .line 2053
    check-cast v2, Landroid/view/ViewGroup;

    .line 2054
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v3

    .line 2055
    .local v0, "canScrollVertically":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2060
    .end local v0    # "canScrollVertically":Z
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :goto_2
    return v3

    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    move v0, v4

    .line 2054
    goto :goto_1

    .line 2058
    .restart local v0    # "canScrollVertically":Z
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2059
    goto :goto_0

    .end local v0    # "canScrollVertically":Z
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_3
    move v3, v4

    .line 2060
    goto :goto_2
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 387
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 389
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    .line 390
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 392
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    .line 394
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 396
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 397
    return-void
.end method

.method private maybeCalculateTicksCoordinates()V
    .locals 6

    .prologue
    .line 1472
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1490
    :cond_0
    return-void

    .line 1476
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1478
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1480
    .local v2, "tickCount":I
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1481
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    array-length v3, v3

    mul-int/lit8 v4, v2, 0x2

    if-eq v3, v4, :cond_3

    .line 1482
    :cond_2
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 1485
    :cond_3
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v3, v3

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1486
    .local v1, "interval":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    .line 1487
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v0

    .line 1488
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 1486
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private maybeDrawHalo(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .prologue
    .line 1646
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v0

    int-to-float v2, p2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 1648
    .local v6, "centerX":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 1650
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v0, v6, v0

    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v0, p3, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    add-int/2addr v0, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1657
    :cond_0
    int-to-float v0, v6

    int-to-float v1, p3

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1659
    .end local v6    # "centerX":I
    :cond_1
    return-void
.end method

.method private maybeDrawTicks(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v6, 0x0

    .line 1598
    iget-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1603
    .local v0, "activeRange":[F
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    aget v4, v0, v6

    invoke-static {v3, v4}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v1

    .line 1604
    .local v1, "leftPivotIndex":I
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-static {v3, v4}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v2

    .line 1607
    .local v2, "rightPivotIndex":I
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1610
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1617
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    array-length v5, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private maybeIncreaseTrackSidePadding()V
    .locals 3

    .prologue
    .line 494
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 495
    .local v0, "increasedSidePadding":I
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 496
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 499
    :cond_0
    return-void
.end method

.method private moveFocus(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 2231
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2233
    .local v6, "oldFocusedThumbIdx":I
    int-to-long v2, v6

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 2234
    .local v0, "newFocusedThumbIdx":J
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2235
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    if-ne v2, v6, :cond_0

    .line 2237
    const/4 v2, 0x0

    .line 2244
    :goto_0
    return v2

    .line 2239
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2240
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2242
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2243
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2244
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private moveFocusInAbsoluteDirection(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2255
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2257
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const p1, 0x7fffffff

    .line 2259
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    return v0

    .line 2257
    :cond_1
    neg-int p1, p1

    goto :goto_0
.end method

.method private normalizeValue(F)F
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 1583
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    .line 1584
    .local v0, "normalized":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1587
    .end local v0    # "normalized":F
    :cond_0
    return v0
.end method

.method private onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 2176
    sparse-switch p1, :sswitch_data_0

    .line 2209
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2178
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2182
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2185
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2187
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2190
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2191
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2193
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2198
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2199
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2202
    :sswitch_5
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2203
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2204
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2176
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_3
        0x17 -> :sswitch_5
        0x3d -> :sswitch_0
        0x42 -> :sswitch_5
        0x45 -> :sswitch_2
        0x46 -> :sswitch_4
        0x51 -> :sswitch_4
    .end sparse-switch
.end method

.method private onStartTrackingTouch()V
    .locals 3

    .prologue
    .line 2084
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2085
    .local v0, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v0, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    goto :goto_0

    .line 2087
    .end local v0    # "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 3

    .prologue
    .line 2091
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2092
    .local v0, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v0, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    goto :goto_0

    .line 2094
    .end local v0    # "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    :cond_0
    return-void
.end method

.method private static parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 490
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 486
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static pivotIndex([FF)I
    .locals 1
    .param p0, "coordinates"    # [F
    .param p1, "position"    # F

    .prologue
    .line 1760
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 400
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget-object v4, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v6, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    const/4 v2, 0x0

    new-array v7, v2, [I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    .line 401
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 403
    .local v8, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 404
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 405
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 406
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 408
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    .line 410
    .local v11, "hasTrackColor":Z
    if-eqz v11, :cond_2

    sget v20, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    .line 412
    .local v20, "trackColorInactiveRes":I
    :goto_0
    if-eqz v11, :cond_3

    sget v18, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    .line 416
    .local v18, "trackColorActiveRes":I
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v8, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 417
    .local v19, "trackColorInactive":Landroid/content/res/ColorStateList;
    if-eqz v19, :cond_4

    .end local v19    # "trackColorInactive":Landroid/content/res/ColorStateList;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 423
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 424
    .local v17, "trackColorActive":Landroid/content/res/ColorStateList;
    if-eqz v17, :cond_5

    .end local v17    # "trackColorActive":Landroid/content/res/ColorStateList;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 430
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 431
    .local v12, "thumbColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2, v12}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 433
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    .line 435
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 434
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 437
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 439
    sget v2, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 440
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 441
    .local v9, "haloColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_6

    .end local v9    # "haloColor":Landroid/content/res/ColorStateList;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 446
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 447
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 448
    .local v10, "hasTickColor":Z
    if-eqz v10, :cond_7

    sget v16, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    .line 450
    .local v16, "tickColorInactiveRes":I
    :goto_5
    if-eqz v10, :cond_8

    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    .line 453
    .local v14, "tickColorActiveRes":I
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 454
    .local v15, "tickColorInactive":Landroid/content/res/ColorStateList;
    if-eqz v15, :cond_9

    .end local v15    # "tickColorInactive":Landroid/content/res/ColorStateList;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 460
    move-object/from16 v0, p1

    invoke-static {v0, v8, v14}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 461
    .local v13, "tickColorActive":Landroid/content/res/ColorStateList;
    if-eqz v13, :cond_a

    .end local v13    # "tickColorActive":Landroid/content/res/ColorStateList;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 467
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 468
    sget v2, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 470
    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 472
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 474
    sget v2, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 476
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 480
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    return-void

    .line 410
    .end local v10    # "hasTickColor":Z
    .end local v12    # "thumbColor":Landroid/content/res/ColorStateList;
    .end local v14    # "tickColorActiveRes":I
    .end local v16    # "tickColorInactiveRes":I
    .end local v18    # "trackColorActiveRes":I
    .end local v20    # "trackColorInactiveRes":I
    :cond_2
    sget v20, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    goto/16 :goto_0

    .line 412
    .restart local v20    # "trackColorInactiveRes":I
    :cond_3
    sget v18, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    goto/16 :goto_1

    .line 417
    .restart local v18    # "trackColorActiveRes":I
    .restart local v19    # "trackColorInactive":Landroid/content/res/ColorStateList;
    :cond_4
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    .line 420
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v19

    goto/16 :goto_2

    .line 424
    .end local v19    # "trackColorInactive":Landroid/content/res/ColorStateList;
    .restart local v17    # "trackColorActive":Landroid/content/res/ColorStateList;
    :cond_5
    sget v2, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    .line 427
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v17

    goto/16 :goto_3

    .line 441
    .end local v17    # "trackColorActive":Landroid/content/res/ColorStateList;
    .restart local v9    # "haloColor":Landroid/content/res/ColorStateList;
    .restart local v12    # "thumbColor":Landroid/content/res/ColorStateList;
    :cond_6
    sget v2, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    .line 444
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto/16 :goto_4

    .line 448
    .end local v9    # "haloColor":Landroid/content/res/ColorStateList;
    .restart local v10    # "hasTickColor":Z
    :cond_7
    sget v16, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    goto/16 :goto_5

    .line 450
    .restart local v16    # "tickColorInactiveRes":I
    :cond_8
    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    goto/16 :goto_6

    .line 454
    .restart local v14    # "tickColorActiveRes":I
    .restart local v15    # "tickColorInactive":Landroid/content/res/ColorStateList;
    :cond_9
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    .line 457
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto/16 :goto_7

    .line 461
    .end local v15    # "tickColorInactive":Landroid/content/res/ColorStateList;
    .restart local v13    # "tickColorActive":Landroid/content/res/ColorStateList;
    :cond_a
    sget v2, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    .line 464
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto/16 :goto_8
.end method

.method private scheduleAccessibilityEventSender(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 2365
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2366
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 2370
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    .line 2371
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/material/slider/BaseSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2372
    return-void

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 6
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;
    .param p2, "value"    # F

    .prologue
    .line 2018
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2020
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 2022
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 2023
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 2024
    .local v0, "left":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    add-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2025
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(IIII)V

    .line 2029
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2030
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p0, v1}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2031
    invoke-virtual {p1, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2033
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 2034
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 701
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :goto_0
    return-void

    .line 707
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 711
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 712
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->createLabelPool()V

    .line 713
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    goto :goto_0
.end method

.method private shouldDrawCompatHalo()Z
    .locals 2

    .prologue
    .line 1662
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1664
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1662
    :goto_0
    return v0

    .line 1664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private snapActiveThumbToValue(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1838
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method private snapPosition(F)D
    .locals 6
    .param p1, "position"    # F

    .prologue
    .line 1764
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1765
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1766
    .local v0, "stepCount":I
    int-to-float v1, v0

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 1769
    .end local v0    # "stepCount":I
    :goto_0
    return-wide v2

    :cond_0
    float-to-double v2, p1

    goto :goto_0
.end method

.method private snapThumbToValue(IF)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .prologue
    .line 1843
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 1844
    const/4 v1, 0x0

    .line 1853
    :goto_0
    return v1

    .line 1847
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->getClampedValue(IF)F

    move-result v0

    .line 1849
    .local v0, "newValue":F
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 1852
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedFromUser(I)V

    .line 1853
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private snapTouchPosition()Z
    .locals 1

    .prologue
    .line 1834
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v0

    return v0
.end method

.method private updateHaloHotspot()V
    .locals 7

    .prologue
    .line 1502
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    .line 1503
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1504
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 1505
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 1506
    .local v1, "x":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v2

    .line 1507
    .local v2, "y":I
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    add-int/2addr v6, v2

    invoke-static {v0, v3, v4, v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1511
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private updateTrackWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 1494
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 1497
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1498
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .locals 1

    .prologue
    .line 583
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueFrom()V

    .line 585
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueTo()V

    .line 586
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateStepSize()V

    .line 587
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValues()V

    .line 588
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->warnAboutFloatingPointError()V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 591
    :cond_0
    return-void
.end method

.method private validateStepSize()V
    .locals 5

    .prologue
    .line 531
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 535
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 536
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 537
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 533
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    return-void
.end method

.method private validateValueFrom()V
    .locals 5

    .prologue
    .line 502
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "valueFrom(%s) must be smaller than valueTo(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 505
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 504
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    return-void
.end method

.method private validateValueTo()V
    .locals 5

    .prologue
    .line 510
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "valueTo(%s) must be greater than valueFrom(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 513
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 512
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    return-void
.end method

.method private validateValues()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 542
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 543
    .local v0, "value":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 544
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    .line 547
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 548
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 549
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 545
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_2
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 555
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 556
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 557
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 558
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 553
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    .end local v0    # "value":Ljava/lang/Float;
    :cond_3
    return-void
.end method

.method private valueLandsOnTick(F)Z
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 520
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v2, Ljava/math/BigDecimal;

    .line 521
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 522
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 523
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 527
    .local v0, "potentialTickValue":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private valueToX(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1895
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private warnAboutFloatingPointError()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 564
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 570
    sget-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    const-string v1, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "stepSize"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 574
    sget-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    const-string v1, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "valueFrom"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    const-string v1, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "valueTo"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method public clearOnChangeListeners()V
    .locals 1

    .prologue
    .line 837
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 838
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    .prologue
    .line 860
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 861
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2349
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2356
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 2098
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2100
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2101
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2102
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2103
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2104
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 2105
    .local v0, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2106
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setState([I)Z

    goto :goto_0

    .line 2109
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2110
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    .line 2112
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2113
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2114
    return-void
.end method

.method forceDrawCompatHalo(Z)V
    .locals 0
    .param p1, "force"    # Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2123
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 2124
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2344
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2338
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .prologue
    .line 813
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .prologue
    .line 794
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    return v0
.end method

.method public getHaloRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 1047
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .prologue
    .line 1089
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    return v0
.end method

.method protected getMinSeparation()F
    .locals 1

    .prologue
    .line 1881
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .prologue
    .line 755
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .prologue
    .line 889
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 921
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 994
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    .prologue
    .line 1035
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1185
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1248
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1277
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1217
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1364
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 1126
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1393
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackSidePadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 1109
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1333
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 1115
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .prologue
    .line 600
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .prologue
    .line 626
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    return v0
.end method

.method getValues()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .prologue
    .line 868
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isRtl()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x1

    .line 2219
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTickVisible()Z
    .locals 1

    .prologue
    .line 1303
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1422
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1424
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1425
    .local v0, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    goto :goto_0

    .line 1427
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1435
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1439
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1440
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1441
    .local v0, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    goto :goto_0

    .line 1444
    .end local v0    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1445
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1520
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v1, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1524
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1527
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1529
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v0

    .line 1531
    .local v0, "top":I
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawInactiveTrack(Landroid/graphics/Canvas;II)V

    .line 1532
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1533
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawActiveTrack(Landroid/graphics/Canvas;II)V

    .line 1536
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawTicks(Landroid/graphics/Canvas;)V

    .line 1538
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1539
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawHalo(Landroid/graphics/Canvas;II)V

    .line 1542
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1543
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsAdded()V

    .line 1547
    :cond_3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawThumbs(Landroid/graphics/Canvas;II)V

    .line 1548
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2304
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2305
    if-nez p1, :cond_0

    .line 2306
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2307
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2308
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 2313
    :goto_0
    return-void

    .line 2310
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->focusThumbOnFocusGained(I)V

    .line 2311
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 2128
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2129
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2172
    :cond_0
    :goto_0
    return v2

    .line 2133
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 2134
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2138
    :cond_2
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-ne v4, v6, :cond_4

    .line 2139
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2140
    .local v0, "handled":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2143
    .end local v0    # "handled":Ljava/lang/Boolean;
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2144
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateIncrementForKey(I)Ljava/lang/Float;

    move-result-object v1

    .line 2145
    .local v1, "increment":Ljava/lang/Float;
    if-eqz v1, :cond_6

    .line 2146
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2147
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2148
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    :cond_5
    move v2, v3

    .line 2150
    goto :goto_0

    .line 2152
    :cond_6
    sparse-switch p1, :sswitch_data_0

    .line 2172
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2154
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2155
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v2

    goto :goto_0

    .line 2158
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2159
    invoke-direct {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v2

    goto :goto_0

    .line 2164
    :sswitch_1
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2165
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2166
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    move v2, v3

    .line 2167
    goto :goto_0

    .line 2152
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2214
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2215
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    .line 1457
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 1461
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 1459
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1457
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 1463
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2403
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 2404
    .local v0, "sliderState":Lcom/google/android/material/slider/BaseSlider$SliderState;
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2406
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 2407
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 2408
    iget-object v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 2409
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 2410
    iget-boolean v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    if-eqz v1, :cond_0

    .line 2411
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 2413
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 2414
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2391
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2392
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v0, v1}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 2393
    .local v0, "sliderState":Lcom/google/android/material/slider/BaseSlider$SliderState;
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 2394
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 2395
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 2396
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 2397
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasFocus()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 2398
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1467
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 1468
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1469
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return v1

    .line 1672
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1673
    .local v0, "x":F
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1674
    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1675
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1746
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setPressed(Z)V

    .line 1748
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    move v1, v2

    .line 1749
    goto :goto_0

    .line 1679
    :pswitch_0
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 1683
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1687
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1689
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1694
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 1695
    iput-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1696
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1697
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1698
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1699
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    goto :goto_1

    .line 1702
    :pswitch_1
    iget-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v3, :cond_4

    .line 1704
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 1707
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1708
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1711
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1716
    iput-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1717
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1718
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1719
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_1

    .line 1722
    :pswitch_2
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1724
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1725
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1726
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1727
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1729
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1733
    :cond_5
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-eq v1, v5, :cond_6

    .line 1734
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1735
    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1736
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStopTrackingTouch()V

    .line 1738
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto/16 :goto_1

    .line 1677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pickActiveThumb()Z
    .locals 13

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1778
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-eq v7, v11, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return v8

    .line 1782
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPositionAbsolute()F

    move-result v3

    .line 1783
    .local v3, "touchValue":F
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v4

    .line 1784
    .local v4, "touchX":F
    iput v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1785
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1786
    .local v0, "activeThumbDiff":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 1787
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1788
    .local v5, "valueDiff":F
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v6

    .line 1789
    .local v6, "valueX":F
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-le v7, v8, :cond_3

    .line 1816
    .end local v5    # "valueDiff":F
    .end local v6    # "valueX":F
    :cond_2
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-ne v7, v11, :cond_0

    move v8, v9

    goto :goto_0

    .line 1793
    .restart local v5    # "valueDiff":F
    .restart local v6    # "valueX":F
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_6

    sub-float v7, v6, v4

    cmpl-float v7, v7, v12

    if-lez v7, :cond_5

    move v2, v8

    .line 1796
    .local v2, "movingForward":Z
    :goto_2
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gez v7, :cond_8

    .line 1797
    move v0, v5

    .line 1798
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1786
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "movingForward":Z
    :cond_5
    move v2, v9

    .line 1793
    goto :goto_2

    :cond_6
    sub-float v7, v6, v4

    cmpg-float v7, v7, v12

    if-gez v7, :cond_7

    move v2, v8

    goto :goto_2

    :cond_7
    move v2, v9

    goto :goto_2

    .line 1802
    .restart local v2    # "movingForward":Z
    :cond_8
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4

    .line 1804
    sub-float v7, v6, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_9

    .line 1805
    iput v11, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    move v8, v9

    .line 1806
    goto/16 :goto_0

    .line 1809
    :cond_9
    if-eqz v2, :cond_4

    .line 1810
    move v0, v5

    .line 1811
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    goto :goto_3
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 833
    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/slider/BaseOnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method protected setActiveThumbIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 808
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 809
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1414
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1417
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1418
    return-void

    .line 1417
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setFocusedThumbIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 799
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 803
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 805
    return-void
.end method

.method public setHaloRadius(I)V
    .locals 2
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1057
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    if-ne p1, v1, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1061
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 1062
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1063
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1064
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    goto :goto_0

    .line 1068
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    goto :goto_0
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1078
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 1079
    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "haloColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1161
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1165
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 1166
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1167
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1168
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1172
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1173
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setLabelBehavior(I)V
    .locals 1
    .param p1, "labelBehavior"    # I

    .prologue
    .line 1100
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    if-eq v0, p1, :cond_0

    .line 1101
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestLayout()V

    .line 1104
    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/google/android/material/slider/LabelFormatter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 878
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    .line 879
    return-void
.end method

.method protected setSeparationUnit(I)V
    .locals 0
    .param p1, "separationUnit"    # I

    .prologue
    .line 1877
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 1878
    return-void
.end method

.method public setStepSize(F)V
    .locals 6
    .param p1, "stepSize"    # F

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v5, 0x1

    .line 777
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 781
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 782
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 783
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 779
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 786
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 787
    iput-boolean v5, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 788
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 790
    :cond_1
    return-void
.end method

.method public setThumbElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 899
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 900
    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1, "elevation"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 909
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 910
    return-void
.end method

.method public setThumbRadius(I)V
    .locals 4
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v3, 0x0

    .line 931
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    if-ne p1, v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 935
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 936
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeIncreaseTrackSidePadding()V

    .line 938
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 939
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 938
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 940
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 942
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    goto :goto_0
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 952
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 953
    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbStrokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 965
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 966
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 967
    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1
    .param p1, "thumbStrokeColorResourceId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 979
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 980
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 983
    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1
    .param p1, "thumbStrokeWidth"    # F

    .prologue
    .line 1007
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1009
    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1
    .param p1, "thumbStrokeWidthResourceId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1021
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 1024
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1195
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1200
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1259
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1262
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 1263
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1264
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1288
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1291
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 1292
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1293
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1234
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1235
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1236
    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1
    .param p1, "tickVisible"    # Z

    .prologue
    .line 1313
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eq v0, p1, :cond_0

    .line 1314
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 1315
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1317
    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1375
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1378
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 1379
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1380
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setTrackHeight(I)V
    .locals 1
    .param p1, "trackHeight"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1136
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    if-eq v0, p1, :cond_0

    .line 1137
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 1138
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidateTrack()V

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1141
    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1404
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1407
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 1408
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1409
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_0
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1350
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1351
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1352
    return-void
.end method

.method public setValueFrom(F)V
    .locals 1
    .param p1, "valueFrom"    # F

    .prologue
    .line 614
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 616
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 617
    return-void
.end method

.method public setValueTo(F)V
    .locals 1
    .param p1, "valueTo"    # F

    .prologue
    .line 640
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 643
    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 688
    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 666
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 668
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 669
    return-void
.end method

.method updateBoundsForVirturalViewId(ILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "virtualViewBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2468
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int v0, v3, v2

    .line 2469
    .local v0, "x":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v1

    .line 2471
    .local v1, "y":I
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    add-int/2addr v5, v1

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2472
    return-void
.end method
