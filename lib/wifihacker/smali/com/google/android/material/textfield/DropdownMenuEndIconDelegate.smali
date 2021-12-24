.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:I = 0x43

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x32

.field private static final IS_LOLLIPOP:Z


# instance fields
.field private final accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private final endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

.field private fadeInAnim:Landroid/animation/ValueAnimator;

.field private fadeOutAnim:Landroid/animation/ValueAnimator;

.field private filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

.field private isEndIconChecked:Z

.field private final onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 73
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 97
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 108
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;

    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 140
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 164
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 192
    iput-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 193
    iput-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 194
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 203
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;J)J
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setPopupBackground(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffect(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private addRippleEffect(Landroid/widget/AutoCompleteTextView;)V
    .locals 9
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    invoke-static {p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEditable(Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v1

    .line 316
    .local v1, "boxBackgroundMode":I
    iget-object v4, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 317
    .local v0, "boxBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    sget v4, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p1, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 318
    .local v2, "rippleColor":I
    new-array v3, v8, [[I

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v6, [I

    aput-object v4, v3, v7

    .line 323
    .local v3, "states":[[I
    if-ne v1, v8, :cond_2

    .line 324
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    goto :goto_0

    .line 325
    :cond_2
    if-ne v1, v7, :cond_0

    .line 326
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    goto :goto_0
.end method

.method private addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 14
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rippleColor"    # I
    .param p3, "states"    # [[I
    .param p4, "boxBackground"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 366
    iget-object v13, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v3

    .line 367
    .local v3, "boxBackgroundColor":I
    const v13, 0x3dcccccd    # 0.1f

    move/from16 v0, p2

    invoke-static {v0, v3, v13}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v8

    .line 368
    .local v8, "pressedBackgroundColor":I
    const/4 v13, 0x2

    new-array v4, v13, [I

    const/4 v13, 0x0

    aput v8, v4, v13

    const/4 v13, 0x1

    aput v3, v4, v13

    .line 370
    .local v4, "colors":[I
    sget-boolean v13, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v13, :cond_0

    .line 371
    new-instance v10, Landroid/content/res/ColorStateList;

    move-object/from16 v0, p3

    invoke-direct {v10, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 372
    .local v10, "rippleColorStateList":Landroid/content/res/ColorStateList;
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-direct {v5, v10, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 374
    .local v5, "editTextBackground":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 388
    .end local v5    # "editTextBackground":Landroid/graphics/drawable/Drawable;
    .end local v10    # "rippleColorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v9, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 377
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 378
    .local v9, "rippleBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    new-instance v13, Landroid/content/res/ColorStateList;

    move-object/from16 v0, p3

    invoke-direct {v13, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 379
    const/4 v13, 0x2

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object p4, v7, v13

    const/4 v13, 0x1

    aput-object v9, v7, v13

    .line 380
    .local v7, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 381
    .local v5, "editTextBackground":Landroid/graphics/drawable/LayerDrawable;
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v11

    .line 382
    .local v11, "start":I
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v12

    .line 383
    .local v12, "top":I
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    .line 384
    .local v6, "end":I
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v2

    .line 385
    .local v2, "bottom":I
    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-static {p1, v11, v12, v6, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method private addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 12
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rippleColor"    # I
    .param p3, "states"    # [[I
    .param p4, "boxBackground"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 336
    sget v10, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v10}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v9

    .line 337
    .local v9, "surfaceColor":I
    new-instance v5, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 338
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 339
    .local v5, "rippleBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    const v10, 0x3dcccccd    # 0.1f

    invoke-static {p2, v9, v10}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v4

    .line 340
    .local v4, "pressedBackgroundColor":I
    const/4 v10, 0x2

    new-array v6, v10, [I

    const/4 v10, 0x0

    aput v4, v6, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v6, v10

    .line 341
    .local v6, "rippleBackgroundColors":[I
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, p3, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 343
    sget-boolean v10, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v10, :cond_0

    .line 344
    invoke-virtual {v5, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 345
    const/4 v10, 0x2

    new-array v0, v10, [I

    const/4 v10, 0x0

    aput v4, v0, v10

    const/4 v10, 0x1

    aput v9, v0, v10

    .line 346
    .local v0, "colors":[I
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, p3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 347
    .local v7, "rippleColorStateList":Landroid/content/res/ColorStateList;
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 348
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 349
    .local v3, "mask":Lcom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v10, -0x1

    invoke-virtual {v3, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 350
    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v8, v7, v5, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 351
    .local v8, "rippleDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x2

    new-array v2, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v8, v2, v10

    const/4 v10, 0x1

    aput-object p4, v2, v10

    .line 352
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 358
    .end local v0    # "colors":[I
    .end local v3    # "mask":Lcom/google/android/material/shape/MaterialShapeDrawable;
    .end local v7    # "rippleColorStateList":Landroid/content/res/ColorStateList;
    .end local v8    # "rippleDrawable":Landroid/graphics/drawable/Drawable;
    .local v1, "editTextBackground":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 359
    return-void

    .line 354
    .end local v1    # "editTextBackground":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v10, 0x2

    new-array v2, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v5, v2, v10

    const/4 v10, 0x1

    aput-object p4, v2, v10

    .line 355
    .restart local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .restart local v1    # "editTextBackground":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_0
.end method

.method private static castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 444
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    .end local p0    # "editText":Landroid/widget/EditText;
    return-object p0
.end method

.method private varargs getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "duration"    # I
    .param p2, "values"    # [F

    .prologue
    .line 479
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 480
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 481
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    return-object v0
.end method

.method private getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 4
    .param p1, "topCornerRadius"    # F
    .param p2, "bottomCornerRadius"    # F
    .param p3, "elevation"    # F
    .param p4, "verticalPadding"    # I

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 425
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v2, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 430
    .local v1, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 431
    invoke-static {v2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 432
    .local v0, "popupDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 433
    invoke-virtual {v0, v3, p4, v3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    .line 434
    return-object v0
.end method

.method private initAnimators()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 466
    const/16 v0, 0x43

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 467
    const/16 v0, 0x32

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    return-void

    .line 466
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 467
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isDropdownPopupActive()Z
    .locals 6

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long v0, v2, v4

    .line 439
    .local v0, "activeFor":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isEditable(Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEndIconChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 460
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 461
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    :cond_0
    return-void
.end method

.method private setPopupBackground(Landroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    sget-boolean v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 301
    .local v0, "boxBackgroundMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    .end local v0    # "boxBackgroundMode":I
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local v0    # "boxBackgroundMode":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 419
    :cond_0
    return-void
.end method

.method private showHideDropdown(Landroid/widget/AutoCompleteTextView;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 280
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    if-nez v2, :cond_6

    .line 281
    sget-boolean v2, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_3

    .line 282
    iget-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 287
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eqz v0, :cond_5

    .line 288
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 289
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 282
    goto :goto_1

    .line 284
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-nez v2, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 285
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 284
    goto :goto_3

    .line 291
    :cond_5
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 294
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    goto :goto_0
.end method


# virtual methods
.method initialize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 207
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 209
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    .line 210
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v3, v6

    .line 211
    .local v3, "popupCornerRadius":F
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 213
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 214
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v1, v6

    .line 215
    .local v1, "exposedDropdownPopupElevation":F
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 218
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 222
    .local v2, "exposedDropdownPopupVerticalPadding":I
    invoke-direct {p0, v3, v3, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v5

    .line 228
    .local v5, "roundedCornersPopupBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v6, 0x0

    .line 229
    invoke-direct {p0, v6, v3, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v4

    .line 235
    .local v4, "roundedBottomCornersPopupBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    iput-object v5, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 236
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 237
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const v8, 0x10100aa

    aput v8, v7, v9

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    new-array v7, v9, [I

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    sget-boolean v6, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v6, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    .line 245
    .local v0, "drawableResId":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    invoke-static {v7, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 247
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 246
    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v7, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;

    invoke-direct {v7, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 257
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V

    .line 259
    iget-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    const-string v7, "accessibility"

    .line 260
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 261
    return-void

    .line 243
    .end local v0    # "drawableResId":I
    :cond_0
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_arrow_drop_down:I

    goto :goto_0
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .prologue
    .line 270
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldTintIconOnError()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method
