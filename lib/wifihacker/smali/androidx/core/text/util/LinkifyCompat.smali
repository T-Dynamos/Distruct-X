.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$1;

    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 382
    .local v0, "m":Landroid/text/method/MovementMethod;
    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 387
    :cond_0
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 211
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_0
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_0
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultScheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "schemes"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .local v0, "spannable":Landroid/text/SpannableString;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 265
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v6

    .line 267
    .local v6, "linksAdded":Z
    if-eqz v6, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 11
    .param p0, "text"    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 102
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 105
    :cond_0
    if-nez p1, :cond_1

    move v1, v9

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v9, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 111
    .local v8, "old":[Landroid/text/style/URLSpan;
    array-length v1, v8

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 112
    aget-object v1, v8, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 115
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 116
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 119
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 122
    sget-object v2, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v9

    const-string v1, "https://"

    aput-object v1, v3, v10

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 127
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    .line 128
    sget-object v2, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v10, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v9

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 133
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 134
    invoke-static {v0, p0}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 137
    :cond_6
    invoke-static {v0, p0}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v9

    .line 140
    goto :goto_0

    .line 143
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 144
    .local v7, "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    iget-object v2, v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v2, :cond_8

    .line 145
    iget-object v2, v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v3, v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v4, v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v2, v3, v4, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .end local v7    # "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_9
    move v1, v10

    .line 149
    goto/16 :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6
    .param p0, "spannable"    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 308
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 12
    .param p0, "spannable"    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultScheme"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "schemes"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 336
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v3

    .line 372
    :cond_0
    return v3

    .line 340
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 341
    :cond_2
    if-eqz p3, :cond_3

    array-length v10, p3

    const/4 v11, 0x1

    if-ge v10, v11, :cond_4

    .line 342
    :cond_3
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 345
    :cond_4
    array-length v10, p3

    add-int/lit8 v10, v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .line 346
    .local v7, "schemesCopy":[Ljava/lang/String;
    const/4 v10, 0x0

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    .line 347
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    array-length v10, p3

    if-ge v4, v10, :cond_6

    .line 348
    aget-object v6, p3, v4

    .line 349
    .local v6, "scheme":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x1

    if-nez v6, :cond_5

    const-string v10, ""

    :goto_1
    aput-object v10, v7, v11

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 349
    :cond_5
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 352
    .end local v6    # "scheme":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 353
    .local v3, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 355
    .local v5, "m":Ljava/util/regex/Matcher;
    :cond_7
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 356
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 357
    .local v8, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 358
    .local v2, "end":I
    const/4 v1, 0x1

    .line 360
    .local v1, "allowed":Z
    if-eqz p4, :cond_8

    .line 361
    move-object/from16 v0, p4

    invoke-interface {v0, p0, v8, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 364
    :cond_8
    if-eqz v1, :cond_7

    .line 365
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-static {v10, v7, v5, v0}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9, v8, v2, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 368
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v2

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 173
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 174
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 176
    goto :goto_0

    .line 181
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 183
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 185
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 187
    goto :goto_0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 440
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 443
    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 488
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 422
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 424
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 426
    .local v0, "end":I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    :cond_1
    new-instance v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v2}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 428
    .local v2, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 431
    iput v3, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 432
    iput v0, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 434
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v0    # "end":I
    .end local v2    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 451
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v8}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 454
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 484
    .end local v0    # "address":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 458
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_1
    new-instance v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v6}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 459
    .local v6, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 460
    .local v5, "length":I
    add-int v4, v7, v5

    .line 462
    .local v4, "end":I
    add-int v9, v1, v7

    iput v9, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 463
    add-int v9, v1, v4

    iput v9, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 464
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 465
    add-int/2addr v1, v4

    .line 467
    const/4 v3, 0x0

    .line 470
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 475
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 476
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 478
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "length":I
    .end local v6    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v7    # "start":I
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 471
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "encodedAddress":Ljava/lang/String;
    .restart local v4    # "end":I
    .restart local v5    # "length":I
    .restart local v6    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .restart local v7    # "start":I
    :catch_1
    move-exception v2

    .line 472
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "prefixes"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 391
    if-eqz p3, :cond_0

    .line 392
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 395
    :cond_0
    const/4 v7, 0x0

    .line 397
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 398
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    const/4 v7, 0x1

    .line 402
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 410
    :cond_1
    if-nez v7, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 414
    :cond_2
    return-object p0

    .line 397
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v9

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 496
    .local v7, "urlSpans":[Landroid/text/style/URLSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_0

    .line 497
    new-instance v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v6}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 498
    .local v6, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    aget-object v8, v7, v2

    iput-object v8, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 499
    aget-object v8, v7, v2

    invoke-interface {p1, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    iput v8, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 500
    aget-object v8, v7, v2

    invoke-interface {p1, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iput v8, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 501
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v6    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_0
    sget-object v8, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 507
    .local v3, "len":I
    const/4 v2, 0x0

    .line 509
    :goto_1
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_6

    .line 510
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 511
    .local v0, "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 512
    .local v1, "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    const/4 v4, -0x1

    .line 514
    .local v4, "remove":I
    iget v8, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v9, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v8, v9, :cond_5

    iget v8, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v8, v9, :cond_5

    .line 515
    iget v8, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v8, v9, :cond_3

    .line 516
    add-int/lit8 v4, v2, 0x1

    .line 523
    :cond_1
    :goto_2
    const/4 v8, -0x1

    if-eq v4, v8, :cond_5

    .line 524
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v5, v8, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 525
    .local v5, "span":Landroid/text/style/URLSpan;
    if-eqz v5, :cond_2

    .line 526
    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 528
    :cond_2
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 529
    add-int/lit8 v3, v3, -0x1

    .line 530
    goto :goto_1

    .line 517
    .end local v5    # "span":Landroid/text/style/URLSpan;
    :cond_3
    iget v8, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v10, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_4

    .line 518
    add-int/lit8 v4, v2, 0x1

    goto :goto_2

    .line 519
    :cond_4
    iget v8, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v10, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_1

    .line 520
    move v4, v2

    goto :goto_2

    .line 535
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 536
    goto :goto_1

    .line 537
    .end local v0    # "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v1    # "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v4    # "remove":I
    :cond_6
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .locals 2

    .prologue
    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
